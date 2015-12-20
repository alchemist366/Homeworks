type
  massive = array of integer;

var
  a, b, c: massive;
  i, n, m, en: integer;

procedure razn(var c: massive; a, b: massive; var en: integer; n, m: integer);
var
  i, k, j, f: integer;
begin
  i := 1;
  k := 1;
  j := 1;
  while (i <= n ) and (k <= m) do
  begin
    if (b[k] < a[i]) then
    begin
      inc(k);
    end
    else
    if (b[k] = a[i]) then
    begin
      inc(i);
      inc(k);
    end
    else
    begin
      c[j] := a[i];
      inc(i);
      inc(j);
    end;
  end;
  if (k - 1 = m ) then
  begin
    for f := i to n do
    begin
      c[j] := a[f];
      inc(j);
    end;
  end;
  en := j - 1;
end;

begin
  writeln('Enter the length of I array');
  readln(n);
  setlength(a, n + 1);
  writeln('Enter your I array');
  for i := 1 to n do 
  begin
    readln(a[i]);
  end;
  writeln('Enter the length of II array');
  readln(m);
  setlength(b, m + 1);
  writeln('Enter your II array');
  for i := 1 to m do 
  begin
    readln(b[i]);
  end;
  
  if (n > m) then
  begin
    setlength(c, n + 1);
    razn(c, a, b, en, n, m);
  end
  else
  begin
    setlength(c, m + 1);
    razn(c, b, a, en, m, n);
  end;
  
  for i := 1 to en do
  begin
    write(c[i], ' ');
  end;
end.