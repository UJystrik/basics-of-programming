UNIT DateIO1;
INTERFACE
  TYPE
    Month = (NoMonth, JAN, FEB, MAR, APR, MAY, JUN, JUL, AUG, SEP, OCT, NOV, DEC);
  PROCEDURE WriteMonth(VAR FOut: TEXT; VAR Mo: Month);
IMPLEMENTATION
PROCEDURE WriteMonth(VAR FOut: TEXT; VAR Mo: Month);
BEGIN {WriteMonth}
  IF Mo = JAN THEN WRITE(FOut, 'JAN') ELSE
  IF Mo = FEB THEN WRITE(FOut, 'FEB') ELSE
  IF Mo = MAR THEN WRITE(FOut, 'MAR') ELSE
  IF Mo = APR THEN WRITE(FOut, 'APR') ELSE
  IF Mo = MAY THEN WRITE(FOut, 'MAY') ELSE
  IF Mo = JUN THEN WRITE(FOut, 'JUN') ELSE
  IF Mo = JUL THEN WRITE(FOut, 'JUL') ELSE
  IF Mo = AUG THEN WRITE(FOut, 'AUG') ELSE
  IF Mo = SEP THEN WRITE(FOut, 'SEP') ELSE
  IF Mo = OCT THEN WRITE(FOut, 'OCT') ELSE
  IF Mo = NOV THEN WRITE(FOut, 'NOV') ELSE
  IF Mo = DEC THEN WRITE(FOut, 'DEC')
     ELSE WRITE(FOut, 'NoMonth')
END;{WriteMonth}
BEGIN
END.