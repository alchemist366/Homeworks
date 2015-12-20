type
  abiturient = record
    SecondName: string;
    FirstName: string;
    ball: integer;
    GoldMedal: boolean;
    FiveForEkzam: boolean;
  end;

var
  ch: char;
  f: text;
  a: array of abiturient;
  i, n, k: integer;
  s: string;

begin
  writeln('Enter the number of entrants');
  readln(n);
  setlength(a, n + 1);
  writeln('Enter the Second name and First name of each applicant, the total score for all the exams or not there is a gold medal (Yes / No), and 5 at one of the examination (Yes / No)');
  for i := 1 to n do
  begin
    writeln('applicant#', i);
    readln(a[i].SecondName);
    readln(a[i].FirstName);
    readln(a[i].ball);
    readln(s);
    if(s = 'Yes') then
    begin
      a[i].GoldMedal := true;
    end;
    if(s = 'No') then
    begin
      a[i].GoldMedal := false;
    end;
    readln(s);
    if(s = 'Yes') then
    begin
      a[i].FiveForEkzam := true;
    end;
    if(s = 'No') then
    begin
      a[i].FiveForEkzam := false;
    end;
  end;
  writeln('Enter a passing grade');
  readln(k);
  assign(f, 'TestData\OUTPUTR4');
  rewrite(f);
  for i := 1 to n do
  begin
    write(f, 'applicant № ', i, ' - ');
    if ((a[i].GoldMedal = true) and (a[i].FiveForEkzam = true)) or (a[i].ball >= k) then
    begin
      writeln(f, a[i].SecondName, ' ', a[i].FirstName, ' enrolled');
    end
    else
    begin
      writeln(f, a[i].SecondName, ' ', a[i].FirstName, '  not enrolled');
    end;
  end;
  close(f);
  assign(f, 'TestData\OUTPUTR4');
  reset(f);
  while not eof(f) do
  begin
    read(f, ch);
    write(ch);
  end;
end.
