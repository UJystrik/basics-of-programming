PROGRAM DateIOTest(INPUT, OUTPUT);
USES DateIO1;
VAR
  Mo1: Month;
BEGIN
  Mo1 := JAN;
  WriteMonth(OUTPUT, Mo1);
  Mo1 := FEB;
  WriteMonth(OUTPUT, Mo1);
  Mo1 := MAR;
  WriteMonth(OUTPUT, Mo1);
  Mo1 := APR;
  WriteMonth(OUTPUT, Mo1);
  Mo1 := MAY;
  WriteMonth(OUTPUT, Mo1);
  Mo1 := JUN;
  WriteMonth(OUTPUT, Mo1);
  Mo1 := JUL;
  WriteMonth(OUTPUT, Mo1);
  Mo1 := AUG;          
  WriteMonth(OUTPUT, Mo1); 
  Mo1 := SEP;
  WriteMonth(OUTPUT, Mo1);
  Mo1 := OCT;
  WriteMonth(OUTPUT, Mo1);
  Mo1 := NOV;
  WriteMonth(OUTPUT, Mo1);
  Mo1 := DEC;
  WriteMonth(OUTPUT, Mo1); 
END.
