/*
 * cartridge_detection.c
 *
 *  Created on: 31.10.2019
 *      Author: Wolfgang Stubig <w.stubig@firmaplus.de>
 */

#include <string.h>
#include <stdint.h>
#include "cartridge_detection.h"



/*************************************************************************
 * Cartridge Type Detection
 *************************************************************************/
int isValidHostChar(char c) {
    return ( c == 45 || c == 46 || (c > 47 && c < 58) || (c > 64 && c < 91) || (c > 96 && c < 122) );
}

/*
 * basicly these Chars are allowed in path of URI:
 * pchar       = unreserved / pct-encoded / sub-delims / ":" / "@"
 * pct-encoded = "%" HEXDIG HEXDIG
 * unreserved  = ALPHA / DIGIT / "-" / "." / "_" / "~"
 * sub-delims  = "!" / "$" / "&" / "'" / "(" / ")"
 *             / "*" / "+" / "," / ";" / "="
 *
 * but we don't allow Search-String chars too
 */
int isValidPathChar(char c) {
    return ((c > 44 && c < 58) || (c > 64 && c < 91) || (c > 96 && c < 122) );
}

int searchForBytes(unsigned char *bytes, unsigned int size, unsigned char *signature, unsigned int sigsize, int minhits)
{
	int count = 0;
	for(unsigned int i = 0; i < size - sigsize; ++i)
	{
		int matches = 0;
		for(unsigned int j = 0; j < sigsize; ++j)
		{
			if(bytes[i+j] == signature[j])
				++matches;
			else
				break;
		}
		if(matches == sigsize)
		{
			++count;
			i += sigsize;  // skip past this signature 'window' entirely
		}
		if(count >= minhits)
			break;
	}
	return (count >= minhits);
}


int isProbablyPLS(unsigned int size, unsigned char *bytes)
{
	uint16_t * nmi_p = (uint16_t * )&bytes[size - 6];
	int i = nmi_p[0] - 0x1000 , hostHasNoDot = 1;

	if(i < 0)
		return 0;

    while ( i < size && isValidPathChar(bytes[i]))
        i++;

    if( i >= size || bytes[i] != 0)
        return 0;

    i++;
    while ( i < size && isValidHostChar(bytes[i])){
    	if(bytes[i] == 46 )
    		hostHasNoDot = 0;
        i++;
    }

    // we do not allow dotless hostnames or IP address strings. API on TLD not possible
    if( i >= size || bytes[i] != 0 || i < 6 || hostHasNoDot){
        return 0;
    }

	unsigned char signature[] = { 0x8D, 0xF1, 0x1F };  // STA $1FF1 // Send write buffer signature
	return searchForBytes(bytes, size, signature, 3, 1);
}

int isPotentialF8(unsigned int size, unsigned char *bytes){
	unsigned char  signature[] = { 0x8D, 0xF9, 0x1F };  // STA $1FF9
	return searchForBytes(bytes, size, signature, 3, 2);
}


/* The following detection routines are modified from the Atari 2600 Emulator Stella
  (https://github.com/stella-emu) */

int isProbablySC(unsigned int size, unsigned char *bytes)
{
	unsigned int banks = size/4096;
	// check 2K for SC
	if(banks == 0 && size >= 256 )
    	banks++;
	for (int i = 0; i < banks; i++)
	{
		for (int j = 0; j < 128; j++)
		{
			if (bytes[i*4096+j] != bytes[i*4096+j+128])
				return 0;
		}
	}
	return 1;
}

int isProbablyFE(unsigned int size, unsigned char *bytes)
{	// These signatures are attributed to the MESS project
	unsigned char signature[4][5] = {
		{ 0x20, 0x00, 0xD0, 0xC6, 0xC5 },  // JSR $D000; DEC $C5
		{ 0x20, 0xC3, 0xF8, 0xA5, 0x82 },  // JSR $F8C3; LDA $82
		{ 0xD0, 0xFB, 0x20, 0x73, 0xFE },  // BNE $FB; JSR $FE73
		{ 0x20, 0x00, 0xF0, 0x84, 0xD6 }   // JSR $F000; STY $D6
	};
	for (int i = 0; i < 4; ++i)
		if(searchForBytes(bytes, size, signature[i], 5, 1))
			return 1;

	return 0;
}

int isProbably3F(unsigned int size, unsigned char *bytes)
{	// 3F cart bankswitching is triggered by storing the bank number
	// in address 3F using 'STA $3F'
	// We expect it will be present at least 2 times, since there are
	// at least two banks
	unsigned char signature[] = { 0x85, 0x3F };  // STA $3F
	return searchForBytes(bytes, size, signature, 2, 2);
}

int isProbably3E(unsigned int size, unsigned char *bytes)
{	// 3E cart bankswitching is triggered by storing the bank number
	// in address 3E using 'STA $3E', commonly followed by an
	// immediate mode LDA
	unsigned char  signature[] = { 0x85, 0x3E, 0xA9, 0x00 };  // STA $3E; LDA #$00
	return searchForBytes(bytes, size, signature, 4, 1);
}

int isProbably3EPlus(unsigned int size, unsigned char *bytes)
{	// 3E+ cart is identified by key 'TJ3E' in the ROM
	unsigned char  signature[] = { 'T', 'J', '3', 'E' };
	return searchForBytes(bytes, size, signature, 4, 1);
}

int isProbablyE0(unsigned int size, unsigned char *bytes)
{	// E0 cart bankswitching is triggered by accessing addresses
	// $FE0 to $FF9 using absolute non-indexed addressing
	// These signatures are attributed to the MESS project
	unsigned char signature[8][3] = {
			{ 0x8D, 0xE0, 0x1F },  // STA $1FE0
			{ 0x8D, 0xE0, 0x5F },  // STA $5FE0
			{ 0x8D, 0xE9, 0xFF },  // STA $FFE9
			{ 0x0C, 0xE0, 0x1F },  // NOP $1FE0
			{ 0xAD, 0xE0, 0x1F },  // LDA $1FE0
			{ 0xAD, 0xE9, 0xFF },  // LDA $FFE9
			{ 0xAD, 0xED, 0xFF },  // LDA $FFED
			{ 0xAD, 0xF3, 0xBF }   // LDA $BFF3
		};
	for (int i = 0; i < 8; ++i)
		if(searchForBytes(bytes, size, signature[i], 3, 1))
			return 1;
	return 0;
}

int isProbably0840(unsigned int size, unsigned char *bytes)
{	// 0840 cart bankswitching is triggered by accessing addresses 0x0800
	// or 0x0840 at least twice
	unsigned char signature1[3][3] = {
			{ 0xAD, 0x00, 0x08 },  // LDA $0800
			{ 0xAD, 0x40, 0x08 },  // LDA $0840
			{ 0x2C, 0x00, 0x08 }   // BIT $0800
		};
	for (int i = 0; i < 3; ++i)
		if(searchForBytes(bytes, size, signature1[i], 3, 2))
			return 1;

	unsigned char signature2[2][4] = {
			{ 0x0C, 0x00, 0x08, 0x4C },  // NOP $0800; JMP ...
			{ 0x0C, 0xFF, 0x0F, 0x4C }   // NOP $0FFF; JMP ...
		};
	for (int i = 0; i < 2; ++i)
		if(searchForBytes(bytes, size, signature2[i], 4, 2))
			return 1;

	return 0;
}

int isProbablyCV(unsigned int size, unsigned char *bytes)
{ 	// CV RAM access occurs at addresses $f3ff and $f400
	// These signatures are attributed to the MESS project
	unsigned char signature[2][3] = {
			{ 0x9D, 0xFF, 0xF3 },  // STA $F3FF.X
			{ 0x99, 0x00, 0xF4 }   // STA $F400.Y
		};
	for (int i = 0; i < 2; ++i)
		if(searchForBytes(bytes, size, signature[i], 3, 1))
			return 1;
	return 0;
}

int isProbablyEF(unsigned int size, unsigned char *bytes)
{ 	// EF cart bankswitching switches banks by accessing addresses
	// 0xFE0 to 0xFEF, usually with either a NOP or LDA
	// It's likely that the code will switch to bank 0, so that's what is tested
	unsigned char signature[4][3] = {
			{ 0x0C, 0xE0, 0xFF },  // NOP $FFE0
			{ 0xAD, 0xE0, 0xFF },  // LDA $FFE0
			{ 0x0C, 0xE0, 0x1F },  // NOP $1FE0
			{ 0xAD, 0xE0, 0x1F }   // LDA $1FE0
		};
	for (int i = 0; i < 4; ++i)
		if(searchForBytes(bytes, size, signature[i], 3, 1))
			return 1;
	return 0;
}

int isProbablyE7(unsigned int size, unsigned char *bytes)
{ 	// These signatures are attributed to the MESS project
	unsigned char signature[7][3] = {
			{ 0xAD, 0xE2, 0xFF },  // LDA $FFE2
			{ 0xAD, 0xE5, 0xFF },  // LDA $FFE5
			{ 0xAD, 0xE5, 0x1F },  // LDA $1FE5
			{ 0xAD, 0xE7, 0x1F },  // LDA $1FE7
			{ 0x0C, 0xE7, 0x1F },  // NOP $1FE7
			{ 0x8D, 0xE7, 0xFF },  // STA $FFE7
			{ 0x8D, 0xE7, 0x1F }   // STA $1FE7
		};
	for (int i = 0; i < 7; ++i)
		if(searchForBytes(bytes, size, signature[i], 3, 1))
			return 1;
	return 0;
}

int isProbablyBF(unsigned char *tail)
{
	return !memcmp(tail + 8, "BFBF", 4);
}

int isProbablyBFSC(unsigned char *tail)
{
	return !memcmp(tail + 8, "BFSC", 4);
}

int isProbablyDF(unsigned char *tail)
{
	return !memcmp(tail + 8, "DFBF", 4);
}

int isProbablyDFSC(unsigned char *tail)
{
	return !memcmp(tail + 8, "DFSC", 4);
}

int isProbablyDPCplus(unsigned int size, unsigned char *bytes)
{	// DPC+ ARM code has 2 occurrences of the string DPC+
	// Note: all Harmony/Melody custom drivers also contain the value
	// 0x10adab1e (LOADABLE) if needed for future improvement
	unsigned char  signature[] = { 'D', 'P', 'C', '+' };
	return searchForBytes(bytes, size, signature, 4, 2);
}

int isProbablySB(unsigned int size, unsigned char *bytes)
{
  // SB cart bankswitching switches banks by accessing address 0x0800
	unsigned char signature[2][3] = {
    { 0xBD, 0x00, 0x08 },  // LDA $0800,x
    { 0xAD, 0x00, 0x08 }   // LDA $0800
  };
  if(searchForBytes(bytes, size, signature[0], 3, 1))
    return 1;
  else
    return searchForBytes(bytes, size, signature[1], 3, 1);
}


