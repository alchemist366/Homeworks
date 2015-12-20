type
  massive = array of integer;

var
  a, b, c: massive;
  i, n, m, en: integer;

procedure peresech(var c: massive; a, b: massive; var en: integer; n, m: integer);
var
  i, k, j, f: integer;
begin
  i := 1;
  k := 1;
  j := 1;
  while (i <= n) and (k <= n) do
  begin
    if (b[k] < a[i]) then
    begin
      inc(k);
    end
    else
    if (b[k] = a[i]) then
    begin
      c[j] := a[i];
      inc(i);
      inc(k);
      inc(j);
    end
    else
    begin
      inc(i);
    end;
  end;
  en := j - 1;
end;

begin
  writeln('Enter length of I array');
  readln(n);
  setlength(a, n + 1);
  writeln('Enter your I array');
  for i := 1 to n do 
  begin
    readln(a[i]);
  end;
  writeln('Enter length of II array');
  readln(m);
  setlength(b, m + 1);
  writeln('Enter your II array');
  for i := 1 to m do 
  begin
    readln(b[i]);
  end;
  setlength(c, m + n + 1);
  peresech(c, a, b, en, n, m);
  
  for i := 1 to en do
  begin
    write(c[i], ' ');
  end;
end.
