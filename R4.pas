type
  abiturient = record
    SecondName: string;
    FirstName: string;
    ball: integer;
    GoldMedal: boolean;
    FiveForEkzam: boolean;
  end;

var
  a: array of abiturient;
  i, n, k: integer;
  s: string;

begin
  writeln('Введите кол-во абитуриентов');
  readln(n);
  setlength(a, n + 1);
  writeln('Введите имя каждого абитуриента, суммарный бал за все экзамены, есть или нет золотая медаль(Да/ Нет)  и 5 за один из экзаменов (Да/ Нет)');
  for i := 1 to n do
  begin
    writeln('Абитуриент#', i);
    readln(a[i].SecondName);
    readln(a[i].FirstName);
    readln(a[i].ball);
    readln(s);
    if(s = 'Да') then
    begin
      a[i].GoldMedal := true;
    end;
    if(s = 'Нет') then
    begin
      a[i].GoldMedal := false;
    end;
    readln(s);
    if(s = 'Да') then
    begin
      a[i].FiveForEkzam := true;
    end;
    if(s = 'Нет') then
    begin
      a[i].FiveForEkzam := false;
    end;
  end;
  writeln('Введите проходной балл');
  readln(k);
  for i := 1 to n do
  begin
    write('Абитуриент № ', i, ' - ');
    if ((a[i].GoldMedal = true) and (a[i].FiveForEkzam = true)) or (a[i].ball >= k) then
    begin
      writeln(a[i].SecondName, ' ', a[i].FirstName, ' зачислен');
    end
    else
    begin
      writeln(a[i].SecondName, ' ', a[i].FirstName, '  не зачислен');
    end;
  end;
end.
