type
  massive = array of integer;

var
  a, b, c: massive;
  i, j, n, m, en: integer;
  f1, f2, f3: text;

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
  setlength(c, 201);
  close(f1);
  close(f2);
  obedin(c, a, b, en, n, m);
  assign(f3, 'Output.txt');
  rewrite(f3);
  for i := 1 to en do
  begin
    write(f3, c[i], ' ');
  end;
  close(f3);
end.
