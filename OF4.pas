type
  massive = array of integer;

var
  a, b, c: massive;
  i, j, n, m, en: integer;
  f1, f2, f3: text;

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
  setlength(c, 201 );
  peresech(c, a, b, en, n, m);
  for i := 1 to en do
  begin
    write(c[i], ' ');
  end;
end.
