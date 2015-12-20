type
  koordinat = record
    x: integer;
    y: integer;
  end;
  ar = array [1..100] of koordinat;

var
  a: ar;
  i, n, r: integer;
  f: text;
  flag: boolean;

procedure OnRound(var flag: boolean; a: ar; n, r: integer );
var
i: integer;
begin
  flag := true;
  for i := 1 to n do
  begin
    if (r * r <> a[i].x * a[i].x + a[i].y * a[i].y) then
    begin
      flag := false;
    end;
  end;
end;

begin
  assign(f, 'TestData\InputR3.txt');
  reset(f);
  while not eof(f) do
  begin
    inc(i);
    read(f, a[i].x);
    read(f, a[i].y);
    inc(n);
  end;
  close(f);
  writeln('(x)^2 + (y)^2 = R^2; Enter R');
  readln(r);
  OnRound(flag, a, n, r);
  if (flag) then
  begin
    writeln('All points belong round');
  end
  else
  begin
    writeln('There are some points that do not belong your round');
  end;
end.