  MAC CHAR_D
    _CHAR_D {1}, 0, {2}
    _CHAR_D {1}, 1, {3}
    _CHAR_D {1}, 2, {4}
    _CHAR_D {1}, 3, {5}
    _CHAR_D {1}, 4, {6}
    _CHAR_D {1}, 5, {7}
    _CHAR_D {1}, 6, {8}
    _CHAR_D {1}, 7, {9}
    _CHAR_D {1}, 8, {10}
    _CHAR_D {1}, 9, {11}
    _CHAR_D {1}, 10, {12}
    _CHAR_D {1}, 11, {13}
  ENDM

  MAC CHAR_L
    _CHAR_L {1}, 0, {2}
    _CHAR_L {1}, 1, {3}
    _CHAR_L {1}, 2, {4}
    _CHAR_L {1}, 3, {5}
    _CHAR_L {1}, 4, {6}
    _CHAR_L {1}, 5, {7}
    _CHAR_L {1}, 6, {8}
    _CHAR_L {1}, 7, {9}
    _CHAR_L {1}, 8, {10}
    _CHAR_L {1}, 9, {11}
    _CHAR_L {1}, 10, {12}
    _CHAR_L {1}, 11, {13}
  ENDM

  MAC CHAR_R
    _CHAR_R {1}, 0, {2}
    _CHAR_R {1}, 1, {3}
    _CHAR_R {1}, 2, {4}
    _CHAR_R {1}, 3, {5}
    _CHAR_R {1}, 4, {6}
    _CHAR_R {1}, 5, {7}
    _CHAR_R {1}, 6, {8}
    _CHAR_R {1}, 7, {9}
    _CHAR_R {1}, 8, {10}
    _CHAR_R {1}, 9, {11}
    _CHAR_R {1}, 10, {12}
    _CHAR_R {1}, 11, {13}
  ENDM

    CHAR_D Blank, %0000, %0000, %0000, %0000, %0000, %0000, %0000, %0000, %0000, %0000, %0000, %0000
    CHAR_D Exclamation, %0010, %0010, %0010, %0010, %0010, %0010, %0010, %0010, %0000, %0000, %0010, %0010
    CHAR_D Quote, %0101, %0101, %0101, %0000, %0000, %0000, %0000, %0000, %0000, %0000, %0000, %0000
    CHAR_D Hash, %0000, %0001, %0101, %0111, %0111, %0101, %0101, %0111, %0111, %0101, %0100, %0000
    CHAR_D Dollar, %0010, %0011, %0111, %0110, %0110, %0111, %0011, %0011, %0011, %0111, %0110, %0010
    CHAR_D Percent, %0101, %0101, %0101, %0001, %0011, %0010, %0010, %0110, %0100, %0101, %0101, %0101
    CHAR_D Ampersand, %0010, %0111, %0101, %0101, %0111, %0011, %0010, %0111, %0101, %0101, %0111, %0011
    CHAR_D Apostrophe, %0010, %0010, %0010, %0000, %0000, %0000, %0000, %0000, %0000, %0000, %0000, %0000
;    CHAR_D OpenRound, %0001, %0011, %0010, %0010, %0010, %0010, %0010, %0010, %0010, %0010, %0011, %0001
;    CHAR_D CloseRound, %0100, %0110, %0010, %0010, %0010, %0010, %0010, %0010, %0010, %0010, %0110, %0100
    CHAR_D OpenRound, %0001, %0011, %0010, %0110, %0100, %0100, %0100, %0100, %0110, %0010, %0011, %0001
    CHAR_D CloseRound, %0100, %0110, %0010, %0011, %0001, %0001, %0001, %0001, %0011, %0010, %0110, %0100
    CHAR_D Asterisk, %0000,%0000, %0101, %0101, %0010, %0111, %0111, %0010, %0101, %0101, %0000, %0000
    CHAR_D Plus, %0000, %0000, %0010, %0010, %0010, %0111, %0111, %0010, %0010, %0010, %0000, %0000
    CHAR_D Comma, %0000, %0000, %0000, %0000, %0000, %0000, %0000, %0000, %0010, %0010, %0110, %0100
    CHAR_D Minus, %0000, %0000, %0000, %0000, %0000, %0111, %0111, %0000, %0000, %0000, %0000, %0000
    CHAR_D Period, %0000, %0000, %0000, %0000, %0000, %0000, %0000, %0000, %0000, %0000, %0010, %0010
    CHAR_D Slash, %0001, %0001, %0001, %0011, %0010, %0010, %0010, %0010, %0110, %0100, %0100, %0100

    CHAR_D 0, %0010, %0111, %0101, %0101, %0101, %0101, %0101, %0101, %0101, %0101, %0111, %0010
    CHAR_D 1, %0010, %0110, %0110, %0010, %0010, %0010, %0010, %0010, %0010, %0010, %0111, %0111
    CHAR_D 2, %0110, %0111, %0001, %0001, %0001, %0011, %0010, %0110, %0100, %0100, %0111, %0111
    CHAR_D 3, %0110, %0111, %0001, %0001, %0001, %0011, %0011, %0001, %0001, %0001, %0111, %0110
    CHAR_D 4, %0100, %0101, %0101, %0101, %0101, %0111, %0111, %0001, %0001, %0001, %0001, %0001
    CHAR_D 5, %0111, %0111, %0100, %0100, %0110, %0111, %0001, %0001, %0001, %0001, %0111, %0110
    CHAR_D 6, %0010, %0010, %0110, %0100, %0100, %0110, %0111, %0101, %0101, %0101, %0111, %0010
    CHAR_D 7, %0111, %0111, %0001, %0001, %0011, %0010, %0010, %0110, %0100, %0100, %0100, %0100
    CHAR_D 8, %0010, %0111, %0101, %0101, %0101, %0011, %0110, %0101, %0101, %0101, %0111, %0010
    CHAR_D 9, %0010, %0111, %0101, %0101, %0101, %0111, %0011, %0001, %0001, %0011, %0010, %0010

    CHAR_D Colon, %0000, %0000, %0000, %0000, %0000, %0010, %0010, %0000, %0000, %0010, %0010, %0000
    CHAR_D SemiColon, %0000, %0000, %0000, %0000, %0000, %0010, %0010, %0000, %0000, %0010, %0110, %0100
    CHAR_D Less, %0000, %0000, %0000, %0001, %0011, %0110, %0110, %0011, %0001, %0000, %0000, %0000
    CHAR_D Equal, %0000, %0000, %0000, %0111, %0111, %0000, %0000, %0111, %0111, %0000, %0000, %0000
    CHAR_D Greater, %0000, %0000, %0000, %0100, %0110, %0011, %0011, %0110, %0100, %0000, %0000, %0000
    CHAR_D Question, %0010, %0111, %0101, %0001, %0001, %0011, %0010, %0010, %0000, %0000, %0010, %0010

    CHAR_D A, %0010, %0111, %0101, %0101, %0101, %0111, %0111, %0101, %0101, %0101, %0101, %0101
    CHAR_D B, %0110, %0111, %0101, %0101, %0101, %0110, %0110, %0101, %0101, %0101, %0111, %0110
    CHAR_D C, %0011, %0111, %0100, %0100, %0100, %0100, %0100, %0100, %0100, %0100, %0111, %0011
    CHAR_D D, %0110, %0111, %0101, %0101, %0101, %0101, %0101, %0101, %0101, %0101, %0111, %0110
    CHAR_D E, %0111, %0111, %0100, %0100, %0100, %0110, %0110, %0100, %0100, %0100, %0111, %0111
    CHAR_D F, %0111, %0111, %0100, %0100, %0100, %0110, %0110, %0100, %0100, %0100, %0100, %0100
    CHAR_D G, %0011, %0111, %0100, %0100, %0100, %0101, %0101, %0101, %0101, %0101, %0111, %0011
    CHAR_D H, %0101, %0101, %0101, %0101, %0101, %0111, %0111, %0101, %0101, %0101, %0101, %0101
    CHAR_D I, %0111, %0111, %0010, %0010, %0010, %0010, %0010, %0010, %0010, %0010, %0111, %0111
    CHAR_D J, %0111, %0111, %0001, %0001, %0001, %0001, %0001, %0001, %0001, %0001, %0111, %0110
    CHAR_D K, %0101, %0101, %0101, %0101, %0111, %0110, %0110, %0111, %0101, %0101, %0101, %0101
    CHAR_D L, %0100, %0100, %0100, %0100, %0100, %0100, %0100, %0100, %0100, %0100, %0111, %0111
    CHAR_D M, %0101, %0101, %0111, %0111, %0101, %0101, %0101, %0101, %0101, %0101, %0101, %0101
    CHAR_D N, %0110, %0111, %0101, %0101, %0101, %0101, %0101, %0101, %0101, %0101, %0101, %0101
    CHAR_D O, %0010, %0111, %0101, %0101, %0101, %0101, %0101, %0101, %0101, %0101, %0111, %0010
    CHAR_D P, %0110, %0111, %0101, %0101, %0101, %0111, %0110, %0100, %0100, %0100, %0100, %0100
    CHAR_D Q, %0010, %0111, %0101, %0101, %0101, %0101, %0101, %0101, %0101, %0110, %0111, %0011
    CHAR_D R, %0110, %0111, %0101, %0101, %0101, %0111, %0110, %0101, %0101, %0101, %0101, %0101
    CHAR_D S, %0011, %0111, %0100, %0100, %0100, %0110, %0011, %0001, %0001, %0001, %0111, %0110
    CHAR_D T, %0111, %0111, %0010, %0010, %0010, %0010, %0010, %0010, %0010, %0010, %0010, %0010
    CHAR_D U, %0101, %0101, %0101, %0101, %0101, %0101, %0101, %0101, %0101, %0101, %0111, %0010
    CHAR_D V, %0101, %0101, %0101, %0101, %0101, %0101, %0101, %0101, %0111, %0111, %0010, %0010
    CHAR_D W, %0101, %0101, %0101, %0101, %0101, %0101, %0101, %0101, %0111, %0111, %0101, %0101
    CHAR_D X, %0101, %0101, %0101, %0101, %0111, %0010, %0010, %0111, %0101, %0101, %0101, %0101
    CHAR_D Y, %0101, %0101, %0101, %0101, %0101, %0111, %0111, %0010, %0010, %0010, %0010, %0010
    CHAR_D Z, %0111, %0111, %0001, %0001, %0011, %0010, %0010, %0110, %0100, %0100, %0111, %0111

    CHAR_D OpenSquare, %0011, %0011, %0010, %0010, %0010, %0010, %0010, %0010, %0010, %0010, %0011, %0011
    CHAR_D BackSlash, %0100, %0100, %0100, %0110, %0010, %0010, %0010, %0010, %0011, %0001, %0001, %0001
    CHAR_D CloseSquare, %0110, %0110, %0010, %0010, %0010, %0010, %0010, %0010, %0010, %0010, %0110, %0110
    CHAR_D Accent, %0010, %0010, %0101, %0101, %0000, %0000, %0000, %0000, %0000, %0000, %0000, %0000
    CHAR_D UnderScore, %0000, %0000, %0000, %0000, %0000, %0000, %0000, %0000, %0000, %0000, %0111, %0111
    CHAR_D Grave, %0100, %0110, %0010, %0000, %0000, %0000, %0000, %0000, %0000, %0000, %0000, %0000

    CHAR_D a, %0000, %0000, %0010, %0111, %0101, %0101, %0111, %0111, %0101, %0101, %0101, %0101
    CHAR_D b, %0000, %0000, %0110, %0111, %0101, %0101, %0110, %0110, %0101, %0101, %0111, %0110
    CHAR_D c, %0000, %0000, %0011, %0111, %0100, %0100, %0100, %0100, %0100, %0100, %0111, %0011
    CHAR_D d, %0000, %0000, %0110, %0111, %0101, %0101, %0101, %0101, %0101, %0101, %0111, %0110
    CHAR_D e, %0000, %0000, %0111, %0111, %0100, %0100, %0110, %0110, %0100, %0100, %0111, %0111
    CHAR_D f, %0000, %0000, %0111, %0111, %0100, %0100, %0110, %0110, %0100, %0100, %0100, %0100
    CHAR_D g, %0000, %0000, %0011, %0111, %0100, %0100, %0101, %0101, %0101, %0101, %0111, %0011
    CHAR_D h, %0000, %0000, %0101, %0101, %0101, %0101, %0111, %0111, %0101, %0101, %0101, %0101
    CHAR_D i, %0000, %0000, %0111, %0111, %0010, %0010, %0010, %0010, %0010, %0010, %0111, %0111
    CHAR_D j, %0000, %0000, %0111, %0111, %0001, %0001, %0001, %0001, %0001, %0001, %0111, %0110
    CHAR_D k, %0000, %0000, %0101, %0101, %0101, %0111, %0110, %0110, %0111, %0101, %0101, %0101
    CHAR_D l, %0000, %0000, %0100, %0100, %0100, %0100, %0100, %0100, %0100, %0100, %0111, %0111
    CHAR_D m, %0000, %0000, %0101, %0101, %0111, %0111, %0101, %0101, %0101, %0101, %0101, %0101
    CHAR_D n, %0000, %0000, %0110, %0111, %0101, %0101, %0101, %0101, %0101, %0101, %0101, %0101
    CHAR_D o, %0000, %0000, %0010, %0111, %0101, %0101, %0101, %0101, %0101, %0101, %0111, %0010
    CHAR_D p, %0000, %0000, %0110, %0111, %0101, %0101, %0111, %0110, %0100, %0100, %0100, %0100
    CHAR_D q, %0000, %0000, %0010, %0111, %0101, %0101, %0101, %0101, %0101, %0110, %0111, %0011
    CHAR_D r, %0000, %0000, %0110, %0111, %0101, %0101, %0111, %0110, %0101, %0101, %0101, %0101
    CHAR_D s, %0000, %0000, %0011, %0111, %0100, %0100, %0110, %0011, %0001, %0001, %0111, %0110
    CHAR_D t, %0000, %0000, %0111, %0111, %0010, %0010, %0010, %0010, %0010, %0010, %0010, %0010
    CHAR_D u, %0000, %0000, %0101, %0101, %0101, %0101, %0101, %0101, %0101, %0101, %0111, %0010
    CHAR_D v, %0000, %0000, %0101, %0101, %0101, %0101, %0101, %0101, %0111, %0111, %0010, %0010
    CHAR_D w, %0000, %0000, %0101, %0101, %0101, %0101, %0101, %0101, %0111, %0111, %0101, %0101
    CHAR_D x, %0000, %0000, %0101, %0101, %0101, %0111, %0010, %0010, %0111, %0101, %0101, %0101
    CHAR_D y, %0000, %0000, %0101, %0101, %0101, %0101, %0111, %0111, %0010, %0010, %0010, %0010
    CHAR_D z, %0000, %0000, %0111, %0111, %0001, %0001, %0010, %0010, %0100, %0100, %0111, %0111

    CHAR_D OpenCurly, %0001, %0011, %0010, %0010, %0010, %0110, %0110, %0010, %0010, %0010, %0011, %0001
    CHAR_D Vertical, %0010, %0010, %0010, %0010, %0010, %0010, %0010, %0010, %0010, %0010, %0010, %0010
    CHAR_D CloseCurly, %0100, %0110, %0010, %0010, %0010, %0011, %0011, %0010, %0010, %0010, %0110, %0100
    CHAR_D Tilde, %0000, %0000, %0000, %0000, %0001, %0111, %0111, %0100, %0000, %0000, %0000, %0000
    CHAR_D Delete, %0000, %0000, %0000, %0000, %0000, %0000, %0000, %0000, %0000, %0000, %0000, %0000

    CHAR_D Line, %0000, %0000, %0000, %0000, %0000, %1111, %1111, %0000, %0000, %0000, %0000, %0000

    CHAR_D Ellipsis, %0000, %0000, %0000, %0000, %0000, %0000, %0000, %0000, %0000, %0000, %0101, %0101

    CHAR_L Wifi, %1000, %1100, %0110, %0010, %0011, %1001, %1001, %1101, %0101, %0101, %0101, %0101
    CHAR_R Wifi, %0011, %0011, %0000, %0000, %0011, %0011, %0000, %0000, %0010, %0010, %0011, %0011

    CHAR_L NoWifi, %0000, %0000, %0000, %0000, %0000, %0000, %0000, %0000, %0000, %0000, %1000, %1000
    CHAR_R NoWifi, %0000, %0000, %0000, %0000, %0000, %0000, %0000, %0010, %0011, %0001, %0010, %0010

CONNECTED = 2

  IF CONNECTED = 0
    CHAR_L Connected, %0000, %0000, %0001, %0001, %0110, %0110, %0001, %0001, %0000, %0000, %0000, %0000
    CHAR_R Connected, %0000, %0000, %1100, %0100, %0011, %0011, %0100, %1100, %0000, %0000, %0000, %0000
  ENDIF

  IF CONNECTED = 1
    CHAR_L Connected, %0001, %0011, %0010, %0110, %0100, %0100, %0100, %0100, %0111, %0011, %0000, %0000
    CHAR_R Connected, %1000, %1100, %0110, %0010, %0011, %0101, %0001, %0001, %1111, %1110, %0000, %0000
  ENDIF

  IF CONNECTED = 2
    CHAR_L Connected, %0000, %0110, %0011, %1001, %1101, %0101, %0001, %1011, %1110, %0100, %0000, %0000
    CHAR_R Connected, %0000, %0000, %0001, %0011, %0110, %0100, %0101, %0101, %0100, %0110, %0011, %0000
  ENDIF

NO_CONNECT = 2

  IF NO_CONNECT = 1
    CHAR_L NoConnect, %0010, %0010, %0100, %0101, %1001, %1011, %0011, %0000, %0000, %0000, %0000, %0000
    CHAR_R NoConnect, %0000, %0000, %0000, %0110, %0110, %0100, %0101, %0001, %0010, %0010, %0000, %0000
  ENDIF

  IF NO_CONNECT = 2
    CHAR_L NoConnect, %0000, %0110, %0011, %0001, %0001, %1001, %1001, %0101, %0100, %0010, %0010, %0000
    CHAR_R NoConnect, %0000, %0010, %0010, %0001, %0101, %0100, %0100, %0100, %0100, %0110, %0011, %0000
  ENDIF

  IF NO_CONNECT = 3
    CHAR_L NoConnect, %0000, %0110, %0011, %1001, %1101, %1101, %1001, %1001, %1100, %0110, %0010, %0000
    CHAR_R NoConnect, %0000, %0010, %0011, %0001, %0100, %0100, %0101, %0101, %0100, %0110, %0011, %0000
  ENDIF

; Account
    CHAR_L Account, %1000, %1100, %1100, %1100, %1100, %1000, %0100, %0110, %1110, %1110, %1110, %1110
    CHAR_R Account, %0000, %0001, %0001, %0001, %0001, %0000, %0001, %0011, %0011, %0011, %0011, %0011

; NoAccount
    CHAR_L NoAccount, %1000, %0100, %0100, %0100, %0100, %1000, %0100, %0010, %0010, %0010, %0010, %0010
    CHAR_R NoAccount, %0000, %0001, %0001, %0001, %0001, %0000, %0001, %0010, %0010, %0010, %0010, %0010

; Page
    CHAR_L Page, %0111, %0111, %0100, %0101, %0101, %0101, %0101, %0111, %0111, %0001, %0001, %0001
    CHAR_R Page, %1100, %1100, %0100, %1111, %1111, %0001, %0001, %0001, %0001, %0001, %1111, %1111
