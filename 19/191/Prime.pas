PROGRAM Prime(INPUT, OUTPUT);
CONST 
  MaxNumber = 200;
  MinNumber = 2;
TYPE
  IntSet = SET OF MinNumber..MaxNumber;
VAR
  Int: INTEGER;
  Sieve: SET OF MinNumber..MaxNumber;
  PrimeNumbers: SET OF MinNumber..MaxNumber;
  IntFile: FILE OF INTEGER;
BEGIN
  Sieve := [MinNumber..MaxNumber];
  PrimeNumbers := [];
  REWRITE(IntFile);
  Int := 1;
  WHILE Int < MaxNumber
  DO
    BEGIN
      Int := Int + 1;
      WRITE(IntFile, Int)
    END;
  WHILE Sieve <> []
  DO
    BEGIN
      RESET(IntFile); 
      Int := IntFile^;
      PrimeNumbers := PrimeNumbers + [Int];
      WHILE NOT EOF(IntFile)
      DO
        BEGIN
          IF IntFile^ Mod Int = 0
          THEN
            Sieve := Sieve - [IntFile^]; 
          GET(IntFile)          
        END;
        REWRITE(IntFile);
        WHILE Int <> MaxNumber
        DO
          BEGIN
            Int := Int + 1;
            IF Int IN Sieve
            THEN
              WRITE(IntFile, Int);
          END
    END;
  Int := MinNumber;
  WHILE Int <> MaxNumber
  DO
    BEGIN
      IF Int IN PrimeNumbers
      THEN
        WRITE(OUTPUT, Int, ' ');
      Int := Int + 1
    END
END.
