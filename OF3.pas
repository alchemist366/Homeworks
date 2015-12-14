type
  massive = array of integer;

var
  a, b, c: massive;
  i, j, n, m, en: integer;
  f1, f2, f3: text;

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
  setlength(a, 101);
  setlength(b, 101);
  assign(f1, 'file.txt');
  assign(f2, 'file2.txt');
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
  if (n >= m) then
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
