PROGRAM SortMonth(INPUT, OUTPUT);
USES DateIO;
VAR
  Mo1, Mo2: Month;
BEGIN
  ReadMonth(INPUT, Mo1);
  ReadMonth(INPUT, Mo2);
  IF (Mo1 = NoMonth) OR (Mo2 = NoMonth)
  THEN
    WRITELN('Данные некорректны')
  ELSE
    IF Mo1 = Mo2
    THEN
      WRITELN('Месяцы равны')
    ELSE
      BEGIN
        WriteMonth(OUTPUT, Mo1);
        IF Mo1 < Mo2
        THEN
          WRITE(OUTPUT, ' предшествует ')
        ELSE
          WRITE(OUTPUT, ' следует ');
        WriteMonth(OUTPUT, Mo2);
        WRITELN(OUTPUT);  
      END    
END.
