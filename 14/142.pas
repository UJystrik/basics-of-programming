PROGRAM CopyPrgm(INPUT, OUTPUT);
PROCEDURE RCopy(VAR ReadFile, WriteFile: TEXT);
VAR
  Ch: CHAR;
BEGIN
  IF NOT EOLN(ReadFile)
  THEN
    BEGIN
      READ(ReadFile, Ch);
      WRITE(WriteFile, Ch);
      RCopy(ReadFile, WriteFile)
    END
END;
BEGIN
  RCopy(INPUT, OUTPUT);
  WRITELN(OUTPUT)
END.

