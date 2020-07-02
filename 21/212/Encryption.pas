PROGRAM Encryption(INPUT, OUTPUT);
{��������� ������� �� INPUT � ��� �������� Chiper 
  � �������� ����� ������� � OUTPUT}
CONST
  MaxLen = 20;
TYPE
  Str = ARRAY [1..MaxLen] OF 'A' .. 'Z';
  Chiper = ARRAY [ 'A'..'Z'] OF CHAR;
VAR
  Msg: Str;
  Code: Chiper;
  Len: INTEGER;
  FileCode: TEXT;
  Error: BOOLEAN;

PROCEDURE Initialize(VAR FileCode: TEXT; VAR Code: Chiper; VAR Error: BOOLEAN);
{��������� Code ���� ������}
VAR
  Check, Ch: CHAR;
BEGIN {Initialize}
  Error := FALSE;
  RESET(FileCode);
  WHILE (NOT EOF(FileCode)) AND (Error = FALSE)
  DO
    BEGIN
      Check := ' ';
      WHILE (NOT EOLN(FileCode)) AND (Check = ' ')
      DO
        READ(FileCode, Check);
      IF Check IN ['A'..'Z']
      THEN
        BEGIN
          IF NOT EOLN(FileCode)
          THEN
            READ(FileCode, Ch);
          IF NOT EOLN(FileCode)
          THEN
            BEGIN
              READ(FileCode, Ch);
              Code[Check] := Ch
            END
          ELSE
            Error := TRUE;                                                                    
        END
      ELSE
        Error := TRUE;
      WHILE NOT EOLN(FileCode)
      DO
        READ(FileCode, Check);
      IF NOT EOF
      THEN
        READLN(FileCode)
    END  
END;  {Initialize}
 
PROCEDURE Encode(VAR S: STR);
{������� ������� �� Code, ��������������� �������� �� S}
VAR
  Index: 1..Len;
BEGIN {Encode}
  FOR Index := 1 TO Len
  DO
    IF S[Index] IN ['A'..'Z']
    THEN
      WRITE(OUTPUT, Code[S[Index]])
    ELSE
      IF S[Index] = ' '
      THEN
        WRITE(OUTPUT, '%')
      ELSE
        WRITE(OUTPUT, S[Index]);
  WRITELN
END;  {Encode}
 
BEGIN {Encryption}
  {���������������� Code}
  ASSIGN(FileCode,'code.txt');
  Initialize(FileCode, Code, Error);  
  WHILE (NOT EOF(INPUT)) AND (Error = FALSE)
  DO
    BEGIN
      {������ ������ � Msg � ����������� ��}
      Len := 0;
      WHILE NOT EOLN(INPUT) AND (Len < MaxLen)
      DO
        BEGIN
          Len := Len + 1;
          READ(INPUT, Msg[Len]);
          WRITE(OUTPUT, Msg[Len])
        END;
      READLN(INPUT);
      WRITELN(OUTPUT);
      {����������� ������������ ���������}
      Encode(Msg)
    END;
  IF Error = TRUE
  THEN
    WRITELN(OUTPUT, '���� � ����� ��������')
    
END.  {Encryption}
