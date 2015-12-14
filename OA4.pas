type
  massive = array of integer;

var
  a, b, c: massive;
  i, n, m, en: integer;

procedure obedin(var c: massive; a, b: massive; var en: integer; n, m: integer);
var
  i, k, j, f: integer;
begin
  i := 1;
  k := 1;
  j := 1;
  while (i <= n) and (k <= m) and (i <= m) and (k <= n) do
  begin
    if (b[k] < a[i]) then
    begin
      c[j] := b[k];
      inc(k);
    end
    else
    if (b[k] = a[i]) then
    begin
      c[j] := a[i];
      inc(i);
      inc(k);
    end
    else
    begin
      c[j] := a[i];
      inc(i);
    end;
    inc(j);
  end;
  if (k - 1 = n) then
  begin
    if (c[j - 1] <> a[n]) then
    begin
      for f := i to n do
      begin
        c[j] := a[f];
        inc(j);
      end;
    end;
    for f := k to m do
    begin
      c[j] := b[f];
      inc(j);
    end;
  end
  else
  begin
    if (c[j - 1] <> b[m]) then
    begin
      for f := k to m do
      begin
        c[j] := b[f];
        inc(j);
      end;
    end;
    for f := i to n do
    begin
      c[j] := a[f];
      inc(j);
    end;
  end; 
  en := j - 1;
end;

begin
  writeln('Ввести длину I массива');
  readln(n);
  setlength(a, n + 1);
  writeln('Введите сам I массив');
  for i := 1 to n do 
  begin
    readln(a[i]);
  end;
  writeln('Ввести длину II массива');
  readln(m);
  setlength(b, m + 1);
  writeln('Введите сам II массив');
  for i := 1 to m do 
  begin
    readln(b[i]);
  end;
  setlength(c, m + n + 1);
  obedin(c, a, b, en, n, m);
  for i := 1 to en do
  begin
    write(c[i], ' ');
  end;
end.
