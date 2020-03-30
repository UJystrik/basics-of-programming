PROGRAM AverageScore(INPUT, OUTPUT);
CONST
  NumberOfScores = 4;
  ClassSize = 4;
TYPE
  Score = 0 .. 100;
VAR
  WhichScore: 0 .. NumberOfScores;
  Student: 0 .. ClassSize;
  NextScore: Score;
  Ave, TotalScore, ClassTotal, ScoreCheck: INTEGER;
  Ch: CHAR;
  F: TEXT;
BEGIN {AverageScore}
  ClassTotal := 0;
  WRITELN('Student averages:');
  Student := 0;
  WHILE (Student < ClassSize) AND (Ch <> 'Y')
  DO 
    BEGIN
      REWRITE(F);
      WHILE NOT EOLN
      DO
        BEGIN
          READ(Ch);
          WRITE(F, Ch)
        END;
      Ch := 'o';
      WRITELN(F);
      TotalScore := 0;
      WhichScore := 0;
      WHILE (WhichScore < NumberOfScores) AND (Ch <> 'Y')
      DO
        BEGIN
          READ(ScoreCheck);
          IF (ScoreCheck >= 0) AND (ScoreCheck <= 100)
          THEN
            NextScore := ScoreCheck
          ELSE
            Ch := 'Y'; 
          TotalScore := TotalScore + NextScore;
          WhichScore := WhichScore + 1;
        END;
      READLN;
      IF Ch <> 'Y'
      THEN
        BEGIN
          TotalScore := TotalScore * 10;
          Ave := TotalScore DIV NumberOfScores;
          RESET(F);
          WHILE NOT EOLN(F)
          DO
            BEGIN
              READ(F, Ch);
              WRITE(Ch)
            END;
          WRITE(' ');
          IF Ave MOD 10 >= 5
          THEN
            WRITE(Ave DIV 10 + 1)
          ELSE
            WRITE(Ave DIV 10);
          ClassTotal := ClassTotal + TotalScore;
          Student := Student + 1;
          WRITELN
        END
      ELSE
        WRITE('Error')
    END;
  WRITELN;
  IF Ch <> 'Y'
  THEN
    BEGIN
      WRITELN ('Class average:');
      ClassTotal := ClassTotal DIV (ClassSize * NumberOfScores);
      WRITELN(ClassTotal DIV 10, '.', ClassTotal MOD 10:1)
    END
END.  {AverageScore}
