PROGRAM ReadNumberPrgm(INPUT, OUTPUT);
VAR
  N: INTEGER;
PROCEDURE ReadNumber(VAR F: TEXT; VAR N: INTEGER);
{����������� ������ ���� �� ����� �� ������� ����������� 
�������,  � ��������������� ����� ����� N}
VAR
  D: INTEGER;
PROCEDURE ReadDigit(VAR F: TEXT; VAR D: INTEGER);
{��������� ������� ������ �� �����, ���� �� - �����, ���������� ��� 
���������� � �������� ���� INTEGER. ���� ��������� ������ �� �����
���������� -1
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
      IF MAXINT - N >= MAXINT - MAXINT DIV 10
      THEN 
        IF (MAXINT - N * 10 >= D)
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
  WRITELN(OUTPUT, N);
END.{ReadDigitPrgm} 
