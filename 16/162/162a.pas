PROGRAM SarahRevere(INPUT, OUTPUT); 
VAR
  W1, W2, W3, W4: CHAR;
  Looking, Land, Sea: BOOLEAN;  
BEGIN {SarahRevere}   
  IF NOT EOLN{�������������}
  THEN
    BEGIN
      READ(W2);
      IF NOT EOLN
      THEN
        BEGIN
          READ(W3);
          IF NOT EOLN
          THEN
            READ(W4)
        END
    END;
  IF NOT EOLN
  THEN
    Looking := TRUE
  ELSE
    Looking := FALSE;
  Land := FALSE;
  Sea := FALSE;
  WHILE Looking AND NOT (Land OR Sea)   
  DO
    BEGIN
      {�������� ����}
      W1 := W2;
      W2 := W3;
      W3 := W4;
      READ(W4);
      IF EOLN
      THEN
        Looking := FALSE;
      WRITELN(W1, W2, W3, W4);
      {�������� ���� �� land}
      {�������� ���� �� sea}
    END;
  {�������� ��������� Sarah}
END.  {SarahRevere}

