type
  massive = array of integer;

var
  a, b, c: massive;
  i, j, n, m, en: integer;
  f1, f2: text;

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
  assign(f1, 'TestData\1INPUTOF1.txt');
  assign(f2, 'TestData\2INPUTOF1.txt');
  reset(f1);
  reset(f2);
  while (a[i] <> -1) do
  begin
    inc(i);
    read(f1, a[i]);
    inc(n);
  end;
  while (b[j] <> -1) do
  begin
    inc(j);
    read(f2, b[j]);
    inc(m);
  end;
  close(f1);
  close(f2);
  setlength(c, 201 );
  peresech(c, a, b, en, n - 1, m - 1);
  for i := 1 to en do
  begin
    write(c[i], ' ');
  end;
end.
