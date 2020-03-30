PROGRAM SarahRevere(INPUT, OUTPUT); 
VAR
  W1, W2, W3, W4: CHAR;
  Looking, Land, Sea: BOOLEAN;  
BEGIN {SarahRevere}   
  IF NOT EOLN{Инициализация}
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
  Land := FALSE;
  Sea := FALSE;
  Looking := TRUE;
  WHILE Looking AND NOT (Land OR Sea)   
  DO
    BEGIN
      {Движение окна}
      IF EOLN
      THEN
        Looking := FALSE;    
      W1 := W2;
      W2 := W3;
      W3 := W4;
      IF NOT EOLN
      THEN
        READ(W4);
      {Проверка окна на land}
      Land := (W1 = 'l') AND (W2 = 'a') AND (W3 = 'n') AND (W4 = 'd');
      {Проверка окна на sea}
      Sea := (W1 = 's') AND (W2 = 'e') AND (W3 = 'a');
    END;  
  {Создание сообщения Sarah}
  IF Land = TRUE
  THEN
    WRITELN('British are coming by land')
  ELSE
    IF Sea = TRUE
    THEN
      WRITELN('British are coming by sea')
    ELSE
      WRITELN('Not information')
END.  {SarahRevere}

