PROGRAM RecursiveSortPrgm(INPUT, OUTPUT);
VAR
  F2, F3: TEXT;
PROCEDURE RecursiveSort(VAR F1: TEXT);
VAR 
  F2, F3: TEXT;
  Ch: CHAR;
PROCEDURE Split(VAR F1, F2, F3: TEXT);
{Разбивает F1 на F2, F3}
VAR 
  Ch, Switch: CHAR;
BEGIN {Split}
  RESET(F1);
  REWRITE(F2);
  REWRITE(F3);
  BEGIN {Копировать F1 попеременно в F2 и F3}
    Switch := '2';
    WHILE NOT (EOLN(F1))
    DO
      BEGIN
        READ(F1, Ch);
        IF (Switch = '2')
        THEN
          BEGIN
            WRITE(F2, Ch);
            Switch := '3';
          END
        ELSE
          BEGIN
            WRITE(F3, Ch);
            Switch := '2'
          END
      END
  END;
  WRITELN(F2);
  WRITELN(F3);
  RESET(F2);
  RESET(F3);
  WHILE NOT EOLN(F2)
  DO
    BEGIN
      READ(F2, Ch);
      WRITE(OUTPUT, Ch)
    END;
  WRITELN(OUTPUT);
  WHILE NOT EOLN(F3)
  DO
    BEGIN
      READ(F3, Ch);
      WRITE(OUTPUT, Ch)
    END;
  WRITELN(OUTPUT)
END; {Split}
BEGIN
  Split(INPUT, F2, F3)
{PROCEDURE Merge(VAR F1, F2, F3: TEXT)
 сливает F2 и F3 в F1}
END;
BEGIN
  RecursiveSort(INPUT)
END.   {RecursiveSort}

