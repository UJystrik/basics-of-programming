PROGRAM AverageScore(INPUT, OUTPUT);
CONST
  NumberOfScores = 4;
  ClassSize = 4;
  Radix = 10;
TYPE
  Score = 0 .. 100;
VAR
  WhichScore: 0..NumberOfScores;
  Student: 0..ClassSize;
  NextScore: Score;
  Ave, TotalScore, ClassTotal: INTEGER;
BEGIN {AverageScore}
  ClassTotal := 0;
  WRITELN('Student averages:');
  Student := 0;
  WHILE Student < ClassSize
  DO 
    BEGIN
      TotalScore := 0;
      WhichScore := 0;
      WHILE WhichScore < NumberOfScores
      DO
        BEGIN
          READ(NextScore);
          TotalScore := TotalScore + NextScore;
          WhichScore := WhichScore + 1;
        END;
      READLN;
      TotalScore := TotalScore * Radix;
      Ave := TotalScore DIV NumberOfScores;
      IF Ave MOD Radix >= (Radix / 2)
      THEN
        WRITE('Student ¹', Student + 1:1, ' average: ', Ave DIV Radix + 1)
      ELSE
        WRITE('Student ¹', Student + 1:1, ' average: ', Ave DIV Radix);
      ClassTotal := ClassTotal + TotalScore;
      Student := Student + 1;
      WRITELN
    END;
  WRITELN;
  WRITELN ('Class average:');
  ClassTotal := ClassTotal DIV (ClassSize * NumberOfScores);
  WRITELN(ClassTotal DIV Radix, '.', ClassTotal MOD Radix:1)
END.  {AverageScore}
