PROGRAM AverageScore(INPUT, OUTPUT);
CONST
  NumberOfScores = 4;
  ClassSize = 4;
  Radix = 10;
  MaxScore = 100;
TYPE
  Score = 0..MaxScore;
VAR
  ScoreDomain: SET OF 0..MaxScore;
  WhichScore: 0..NumberOfScores;
  Student: 0..ClassSize;
  NextScore: Score;
  Ave, TotalScore, ClassTotal, ScoreCheck: INTEGER;
  Ch: CHAR;
  Error: BOOLEAN;
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
      Error := FALSE;
      WRITELN(F);
      TotalScore := 0;
      WhichScore := 0;
      WHILE (WhichScore < NumberOfScores) AND (Error = FALSE)
      DO
        BEGIN
          READ(ScoreCheck);
          IF ScoreCheck IN ScoreDomain
          THEN
            NextScore := ScoreCheck
          ELSE
            Error := TRUE; 
          TotalScore := TotalScore + NextScore;
          WhichScore := WhichScore + 1;
        END;
      READLN;
      IF Error = FALSE
      THEN
        BEGIN
          TotalScore := TotalScore * Radix;
          Ave := TotalScore DIV NumberOfScores;
          RESET(F);
          WHILE NOT EOLN(F)
          DO
            BEGIN
              READ(F, Ch);
              WRITE(Ch)
            END;
          WRITE(' ');
          IF Ave MOD Radix >= (Radix / 2)
          THEN
            WRITE(Ave DIV Radix + 1)
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
  IF Error = FALSE
  THEN
    BEGIN
      WRITELN ('Class average:');
      ClassTotal := ClassTotal DIV (ClassSize * NumberOfScores);
      WRITELN(ClassTotal DIV Radix, '.', ClassTotal MOD Radix:1)
    END
END.  {AverageScore}
