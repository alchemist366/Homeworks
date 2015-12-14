var
  a: array [1..100] of integer;
  b: array [1..100] of integer;
  i, j, n, m: integer;
  f1, f2: text;
begin
  assign(f1,'file.txt');
  assign(f2,'file2.txt');
  reset(f1);
  reset(f2);
  while not eof(f1) do
  begin
  inc(i);
    read(f1, a[i]);
    inc(n);
  end;
  while not eof(f2) do
  begin
  inc(j);
    read(f2, b[j]);
    inc(m);
  end;
  close(f1);
  close(f2);
  if (m < n) then
  begin
    j := 1;
    for i := 1 to n do
    begin
      if (a[i] = b[j]) then  inc(j)
      else j := 1;
      if (j = m) then break;
    end;
    if (j = m) then writeln('Ответ: второй файл входит в первый с  ', i - m + 2, ' элемента')
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
    if (i = n) then writeln('Ответ: первый файл входит во второй с ', j - n + 2, ' элемента')
    else writeln(-1);
  end;
end.
