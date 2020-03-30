PROGRAM CountRevers(INPUT, OUTPUT);
USES Count3;
VAR
  Ch1, Ch2, Ch3, El: CHAR;
BEGIN
  Start;
  IF NOT EOLN
  THEN
    READ(INPUT, Ch2);
  IF NOT EOLN
  THEN
    READ(INPUT, Ch3);
  WHILE NOT EOLN
  DO
    BEGIN
      Ch1 := Ch2;
      Ch2 := Ch3;
      READ(Ch3);
      WRITE(Ch3);
      IF (((Ch1 < Ch2) AND (Ch2 > Ch3)) OR ((Ch1 > Ch2) AND (Ch2 < Ch3)))
      THEN
        Bump  
    END;
  RESET(Inp);
  WRITE(OUTPUT, 'Вход: ');
  WHILE NOT EOLN(Inp)
  DO
    BEGIN
      READ(Inp, Ch1);
      WRITE(OUTPUT, Ch1)
    END;
  WRITELN(OUTPUT);
  Value(Ch1, Ch2, Ch3);
  WRITELN('Количество реверсов: ', Ch1, Ch2, Ch3)
END.
