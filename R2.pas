type
  koordinat = record
    x: integer;
    y: integer;
  end;

var
  a: array [1..100] of koordinat;
  i, n, k, b: integer;
  f: text;
  flag: boolean;

begin
  assign(f, 'file.txt');
  reset(f);
  while not eof(f) do
  begin
    inc(i);
    read(f, a[i].x);
    read(f, a[i].y);
    inc(n);
  end;
  close(f);
  writeln('y = kx + b ; введите k и b');
  readln(k, b);
  flag := true;
  for i := 1 to n do
  begin
    if (a[i].y <> k * a[i].x + b) then
    begin
      flag := false;
    end;
  end;
  if (flag) then
  begin
    writeln('все точки принадлежат числовой прямой');
  end
  else
  begin
    writeln('есть точки, которые не принадлежат числовой прямой');
  end;
end.
