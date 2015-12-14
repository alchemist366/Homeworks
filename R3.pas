type
  koordinat = record
    x: integer;
    y: integer;
  end;

var
  a: array [1..100] of koordinat;
  i, n, r: integer;
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
  writeln('(x)^2 + (y)^2 = R^2; введите R');
  readln(R);
  flag := true;
  for i := 1 to n do
  begin
    if (r * r <> a[i].x * a[i].x + a[i].y * a[i].y) then
    begin
      flag := false;
    end;
  end;
  if (flag) then
  begin
    writeln('все точки принадлежат окружности');
  end
  else
  begin
    writeln('есть точки, которые не принадлежат окружности');
  end;
end.
