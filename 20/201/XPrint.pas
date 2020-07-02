PROGRAM XPrint(INPUT, OUTPUT);
USES XPrintIO;
CONST
  AlphCh = ['A'..'Z', 'a'..'z'];
  MaxCh = 25;
TYPE
  Alph = SET OF 'A'..'Z';
  PositionsCh = SET OF 1..MaxCh;
VAR
  Ch: CHAR;
  Combination: SET OF PositionsCh;
  Count: INTEGER;
BEGIN
  IF NOT EOLN
  THEN
    BEGIN
      Count := 1;
      READ(Ch);
      Ch := TransfCh(Ch);
      Combination := CombForPrint(Ch);
      WHILE Count <> 26    
      DO
        BEGIN
          IF Count IN Combination
          THEN
            WRITE('X')
          ELSE
            WRITE(' ');
          IF Count MOD 5 = 0
          THEN
            WRITELN;
          Count := Count + 1;
        END;
    END
  ELSE
    WRITELN
END.
