PROGRAM TestRemove(INPUT,OUTPUT);
  {������ ������ �� ����� ,���������� �� ����� RemoveExtraBlanks}
USES Queue;
VAR
  Ch, Ch1: CHAR;
  Q, TEMP: TEXT;
PROCEDURE CopyOpen (VAR F1, F2 :TEXT);
 {��������� ������ �� F1 � F2 ��� RESET ��� REWRITE;
  ����� ������� F1 ������ ���� ����� ��� ������,� F2 ��� ������,
  �� ������� ������ � ���� ������ ����� ���� �� ����� }
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
