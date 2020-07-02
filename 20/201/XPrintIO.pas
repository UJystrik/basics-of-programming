UNIT XPrintIO;
INTERFACE
CONST
  MaxCh = 25;
TYPE
  PositionsCh = SET OF 1..MaxCh;
  FUNCTION TransfCh(VAR Ch: CHAR): CHAR;
  FUNCTION CombForPrint(VAR Ch: CHAR): SET OF PositionsCh;
IMPLEMENTATION

  
FUNCTION TransfCh(VAR Ch: CHAR): CHAR;
BEGIN
  TransfCh := Ch;
  CASE Ch OF
    'a': TransfCh := 'A';
    'b': TransfCh := 'B';
    'c': TransfCh := 'C';
    'd': TransfCh := 'D';
    'e': TransfCh := 'E';
    'f': TransfCh := 'F';
    'g': TransfCh := 'G';
    'h': TransfCh := 'H';
    'i': TransfCh := 'I';
    'j': TransfCh := 'J';
    'k': TransfCh := 'K';
    'l': TransfCh := 'L';
    'm': TransfCh := 'M';
    'n': TransfCh := 'N';
    'o': TransfCh := 'O';
    'p': TransfCh := 'P';
    'q': TransfCh := 'Q';
    'r': TransfCh := 'R';
    's': TransfCh := 'S';
    't': TransfCh := 'T';
    'u': TransfCh := 'U';
    'v': TransfCh := 'V';
    'w': TransfCh := 'W';
    'x': TransfCh := 'X';
    'y': TransfCh := 'Y';
    'z': TransfCh := 'Z'
  END
END;
FUNCTION CombForPrint(VAR Ch: CHAR): SET OF PositionsCh;
BEGIN
  CASE Ch OF
    'A': CombForPrint := [2, 3, 4, 6, 10, 11, 12, 13, 14, 15, 16, 20, 21, 25];
    'B': CombForPrint := [1, 2, 3, 6, 9, 11, 12, 13, 14, 16, 20, 21, 22, 23, 24, 25];
    'C': CombForPrint := [2, 3, 4, 6, 10, 11, 16, 20, 22, 23, 24];
    'D': CombForPrint := [1, 2, 3, 4, 6, 10, 11, 15, 16, 20, 21, 22, 23, 24];
    'E': CombForPrint := [1, 2, 3, 4, 5, 6, 11, 12, 13, 14, 16, 21, 22, 23, 24, 25];
    'F': CombForPrint := [1, 2, 3, 4, 5, 6, 11, 12, 13, 14, 16, 21];
    'G': CombForPrint := [2, 3, 4, 5, 6, 11, 14, 15, 16, 20, 22, 23, 24, 25];
    'H': CombForPrint := [1, 5, 6, 10, 11, 12, 13, 14, 15, 16, 20, 21, 25];
    'I': CombForPrint := [2, 3, 4, 8, 13, 18, 22, 23, 24];
    'J': CombForPrint := [2, 3, 4, 5, 14, 16, 19, 21, 22];
    'K': CombForPrint := [1, 4, 5, 6, 8, 11, 12, 16, 18, 21, 24, 25];
    'L': CombForPrint := [1, 6, 11, 16, 20, 21, 22, 23, 24, 25];
    'M': CombForPrint := [1, 5, 6, 7, 9, 10, 11, 13, 15, 16, 20, 21, 25];
    'N': CombForPrint := [1, 5, 6, 7, 10, 11, 13, 15, 16, 19, 20, 21, 25];
    'O': CombForPrint := [2, 3, 4, 6, 10, 11, 15, 16, 20, 22, 23, 24];
    'P': CombForPrint := [1, 2, 3, 6, 9, 11, 12, 13, 16, 21];
    'Q': CombForPrint := [2, 3, 4, 6, 10, 11, 15, 17, 18, 19, 25];
    'R': CombForPrint := [1, 2, 3, 6, 9, 11, 12, 13, 16, 18, 21, 25];
    'S': CombForPrint := [2, 3, 4, 5, 6, 12, 13, 14, 20, 21, 22, 23, 24];
    'T': CombForPrint := [1, 2, 3, 4, 5,  8, 13, 18, 23];
    'U': CombForPrint := [1, 5, 6, 10, 11, 15, 16, 20, 22, 23, 24];
    'V': CombForPrint := [1, 5, 6, 10, 11, 15, 17, 19, 23];
    'W': CombForPrint := [1, 5, 6, 10, 11, 13, 15, 16, 18, 20, 22, 24];
    'X': CombForPrint := [1, 5, 7, 9, 13, 17, 19, 21, 25];
    'Y': CombForPrint := [1, 5, 7, 9, 13, 18, 23];
    'Z': CombForPrint := [1, 2, 3, 4, 5, 9, 13, 17, 20, 21, 22, 23, 24, 25]  
  END
END;
BEGIN
END.
