PROGRAM ReadNumberPrgm(INPUT, OUTPUT);
VAR
  N, Min, Max, Mean, Number, Summ: INTEGER;
  Check, Ch: CHAR;
PROCEDURE ReadNumber(VAR F: TEXT; VAR N: INTEGER);
{Преобразует строку цифр из файла до первого нецифрового 
символа,  в соответствующее целое число N}
VAR
  D: INTEGER;
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
  ELSE
    D := -1
END;{ReadDigit}
BEGIN{ReadNumber}
  N := 0;
  ReadDigit(F, D);
  WHILE (D <> -1) AND (N <> -1)
  DO
    BEGIN
      IF N <= MAXINT DIV 10
      THEN 
        IF MAXINT - N * 10 >= D
        THEN
          BEGIN
            N := N * 10 + D
          END
        ELSE
          N := -1
      ELSE
        N := -1; 
      ReadDigit(F, D);  
    END
END;{ReadNumber}
BEGIN{ReadDigitPrgm}
  ReadNumber(INPUT, N);
  IF N <> -1
  THEN
    BEGIN
      Summ := N;
      Number := 1;
      Max := N;
      Min := N
    END;
  WHILE (N <> -1) AND (N <> 0)     {Ситуация с нулями. Не могу решить из за того, что функция возвращает '0' при любом символе - не цифре, по усолвию задания}
  DO
    BEGIN
      IF Min > N
      THEN
        Min := N
      ELSE
        IF Max < N
        THEN
          Max := N;
      IF (MAXINT - Summ) >= N
      THEN
        Summ := Summ + N
      ELSE
        N := -1;
      IF (MAXINT - Number) <> 0
      THEN
        Number := Number + 1
      ELSE
        N := -1;
      ReadNumber(INPUT, N);
    END;
    IF N <> -1
    THEN
      BEGIN
        Mean := Summ DIV Number;
        WRITELN(OUTPUT, 'Максимальное: ', Max);
        WRITELN(OUTPUT, 'Минимальное: ', Min);
        WRITELN(OUTPUT, 'Среднее: ', Mean);
      END
    ELSE
      IF N = -1
      THEN
        WRITELN(OUTPUT, 'Произошло переполнение')
END.{ReadDigitPrgm} 
