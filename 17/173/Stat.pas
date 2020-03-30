PROGRAM ReadNumberPrgm(INPUT, OUTPUT);
VAR
  N1, N2, Min, Max, Mean, Number, Summ: INTEGER;
  Overflow: CHAR;
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
  ReadNumber(INPUT, N1);
  Summ := N1;
  Number := 2;
  Max := N1;
  Min := N1;
  IF N1 = -1
  THEN
    N2 := -1
  ELSE
    ReadNumber(INPUT, N2); 
  WHILE (N2 <> -1) AND (NOT EOLN(INPUT))
  DO
    BEGIN  
      IF N1 > Max
      THEN
        Max := N1
      ELSE
        IF N1 < Min
        THEN
          Min := N1;
      IF ((32767 - Summ) >= N2)
      THEN
        Summ := Summ + N2
      ELSE
        N2 := -1;
      IF Number <> 32767
      THEN
        Number := Number + 1
      ELSE
        N2 := -1;
      N1 := N2;    
      ReadNumber(INPUT, N2);  
    END; 
  IF N2 <> -1
  THEN
    BEGIN
      IF N2 > Max
      THEN
        Max := N2
      ELSE
        IF N2 < Min
        THEN
          Min := N2;
      IF ((32767 - Summ) >= N2)
      THEN
        Summ := Summ + N2
      ELSE
        N2 := -1;
      IF N2 <> -1
      THEN
        BEGIN
          Summ := Summ div Number;
          WRITELN(OUTPUT, 'Минимальное: ', Min);
          WRITELN(OUTPUT, 'Максимальное: ', Max);
          WRITELN(OUTPUT, 'Среднее: ', Summ)
        END
      ELSE
        WRITELN(OUTPUT, 'Произошло переполнение');        
    END
  ELSE
    WRITELN(OUTPUT, 'Произошло переполнение');
END.{ReadDigitPrgm} 
