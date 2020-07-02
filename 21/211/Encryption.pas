PROGRAM Encryption(INPUT, OUTPUT);
{Переводит символы из INPUT в код согласно Chiper 
  и печатает новые символы в OUTPUT}
CONST
  MaxLen = 20;
  ChiperCh = [' ', 'A'..'Z'];
TYPE
  Str = ARRAY [1..MaxLen] OF 'A'..'Z';
  Chiper = ARRAY [' '..'Z'] OF CHAR;
VAR
  Msg: Str;
  Code: Chiper;
  Len: INTEGER;
PROCEDURE Initialize(VAR Code: Chiper);
{Присвоить Code шифр замены}
BEGIN {Initialize}
  Code['A'] := 'Z';
  Code['B'] := 'Y';
  Code['C'] := 'X';
  Code['D'] := '#';
  Code['E'] := 'V';
  Code['F'] := 'U';
  Code['G'] := 'T';
  Code['H'] := 'S';
  Code['I'] := 'I';
  Code['J'] := 'Q';
  Code['K'] := 'P';
  Code['L'] := '!';
  Code['M'] := 'N';
  Code['N'] := 'M';
  Code['O'] := '2';
  Code['P'] := 'K';
  Code['Q'] := '$';
  Code['R'] := 'D';
  Code['S'] := 'H';
  Code['T'] := '*';
  Code['U'] := 'F';
  Code['V'] := 'E';
  Code['W'] := 'T';
  Code['X'] := 'C';
  Code['Y'] := 'B';
  Code['Z'] := 'A';
  Code[' '] := '%' 
END;  {Initialize}
 
PROCEDURE Encode(VAR Msg: STR; VAR Len: INTEGER; VAR Code: Chiper);
{Выводит символы из Code, соответствующие символам из S}
VAR
  Index: 1..Len;
BEGIN {Encode}
  FOR Index := 1 TO Len
  DO
    IF Msg[Index] IN ChiperCh
    THEN
      WRITE(Code[Msg[Index]])
    ELSE
      WRITE(Msg[Index]);
  WRITELN
END;  {Encode}
 
BEGIN {Encryption}
  {Инициализировать Code}
  Initialize(Code);
  WHILE NOT EOF
  DO
    BEGIN
      {читать строку в Msg и распечатать ее}
      Len := 0;
      WHILE NOT EOLN AND (Len < MaxLen)
      DO
        BEGIN
          Len := Len + 1;
          READ(Msg[Len]);
          WRITE(Msg[Len])
        END;
      READLN;
      WRITELN;
      {распечатать кодированное сообщение}
      Encode(Msg, Len, Code)
    END
END.  {Encryption}
