var
  a: array  of integer;
  b: array  of integer;
  i, j, n, m: integer;

begin
  writeln('Ввести длину первого массива');
  readln(n);
  setlength(a, n + 1);
  writeln('Ввести длину второго массива');
  readln(m);
  setlength(b, m + 1);
  writeln('Ввести массив 1');
  for i := 1 to n do
  begin
    readln(a[i]);
  end;
  writeln('Ввести массив 2');
  for j := 1 to m do
  begin
    readln(b[j]);
  end;
  if (m < n) then
  begin
    j := 1;
    for i := 1 to n do
    begin
      if (a[i] = b[j]) then  inc(j)
      else j := 1;
      if (j = m) then break;
    end;
    if (j = m) then writeln('Ответ: второй массив входит в первый с ', i - m + 2, ' элемента')
    else writeln(-1);
  end
  else
  begin
    i := 1;
    for j := 1 to n do
    begin
      if (a[i] = b[j]) then  inc(i)
      else i := 1;
      if (i = n) then break;
    end;
    if (i = n) then writeln('Ответ: первый массив входит во второй с ', j - n + 2, ' элемента')
    else writeln(-1);
  end;
end.
