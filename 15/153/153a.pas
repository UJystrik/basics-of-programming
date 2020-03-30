PROGRAM TestRemove(INPUT,OUTPUT);
  {Читает строку из входа ,пропускает ее через RemoveExtraBlanks}
USES Queue;
VAR
  Ch, Ch1: CHAR;
  Q, TEMP: TEXT;
PROCEDURE CopyOpen (VAR F1, F2 :TEXT);
 {копириует строку из F1 в F2 без RESET или REWRITE;
  таким образом F1 должен быть готов для чтения,а F2 для записи,
  но прошлые строки у этих файлов могут быть не пусты }
VAR
  Ch: CHAR;
BEGIN {CopyOpen}
  WHILE NOT EOLN (F1)
  DO
    BEGIN
      READ(F1,Ch);
      WRITE(F2,Ch)
    END
END;{CopyOpen}
 

BEGIN {TestRemove}
  IF NOT EOLN
  THEN
    READ(Ch1);
  AddQ(Ch1);
  RESET(Q);
  READ(INPUT, Ch);
  AddQ(Ch);
  WriteQ;
  WRITELN
END. {TestRemove}
