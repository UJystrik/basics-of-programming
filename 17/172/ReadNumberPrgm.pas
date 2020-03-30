PROGRAM ReadNumberPrgm(INPUT, OUTPUT);
VAR
  N: INTEGER;
PROCEDURE ReadNumber(VAR F: TEXT; VAR N: INTEGER);
{Преобразует строку цифр из файла до первого нецифрового 
символа,  в соответствующее целое число N}
VAR
  D, D1, D2, D3, D4, D5, C: INTEGER;
PROCEDURE ReadDigit(VAR F: TEXT; VAR D: INTEGER);
{Считывает текущий символ из файла, если он - цифра, возвращает его 
преобразуя в значение типа INTEGER. Если считанный символ не цифра
возвращает -1
}
VAR
  Ch: CHAR;
BEGIN{ReadDigit}
  IF NOT EOLN(F)
  THEN
    BEGIN
      READ(F, Ch);
      IF Ch = '0' THEN D := 0 ELSE
      IF Ch = '1' THEN D := 1 ELSE
      IF Ch = '2' THEN D := 2 ELSE
      IF Ch = '3' THEN D := 3 ELSE
      IF Ch = '4' THEN D := 4 ELSE
      IF Ch = '5' THEN D := 5 ELSE
      IF Ch = '6' THEN D := 6 ELSE
      IF Ch = '7' THEN D := 7 ELSE
      IF Ch = '8' THEN D := 8 ELSE
      IF Ch = '9' THEN D := 9 ELSE
        D := -1           
    END
END;{ReadDigit}
BEGIN{ReadNumber}
  D1 := 0;
  D2 := 0;
  D3 := 0;
  D4 := 0;
  D5 := 0;
  C := 0;
  D := 0;
  N := 0;
  ReadDigit(F, D);
  WHILE (D <> -1) AND (C < 5) AND (NOT EOLN(F))
  DO
    BEGIN
      D1 := D2;
      D2 := D3;
      D3 := D4;
      D4 := D5;
      D5 := D;
      D := -1;
      ReadDigit(F, D);
      C := C + 1
    END;
  IF (D <> -1) AND (C < 5)
  THEN
    BEGIN
      D1 := D2;
      D2 := D3;
      D3 := D4;
      D4 := D5;
      D5 := D;
      D := -1;
      ReadDigit(F, D)      
    END;
  IF (D >= 0) AND (D <= 9)
  THEN
    N := -1
  ELSE
    IF D1 >= 3
    THEN
      IF D1 = 3
      THEN
        IF D2 >= 2
        THEN
          IF D2 = 2
          THEN
            IF D3 >= 7
            THEN
              IF D3 = 7
              THEN
                IF D4 >= 6
                THEN
                  IF D4 = 6
                  THEN
                    IF D5 > 7
                    THEN
                      N := -1
                    ELSE
                      N := D1 * 10000 + D2 * 1000 + D3 * 100 + D4 * 10 + D5   
                  ELSE
                    N := -1
                ELSE
                  N := D1 * 10000 + D2 * 1000 + D3 * 100 + D4 * 10 + D5  
              ELSE
                N := -1   
            ELSE
              N := D1 * 10000 + D2 * 1000 + D3 * 100 + D4 * 10 + D5
          ELSE
            N := -1     
        ELSE
          N := D1 * 10000 + D2 * 1000 + D3 * 100 + D4 * 10 + D5  
      ELSE
        N := -1
    ELSE
      N := D1 * 10000 + D2 * 1000 + D3 * 100 + D4 * 10 + D5   
END;{ReadNumber}
BEGIN{ReadDigitPrgm}
  ReadNumber(INPUT, N);
  WRITELN(OUTPUT, N)
END.{ReadDigitPrgm} 
