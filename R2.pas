type
  koordinat = record
    x: integer;
    y: integer;
  end;
  ar =  array [1..100] of koordinat;

var
  a: ar;
  i, n, k, b: integer;
  f: text;
  flag: boolean;

procedure OnLine(var flag: boolean; a: ar; n, k, b: integer );
var
i: integer;
begin
  flag := true;
  for i := 1 to n do
  begin
    if (a[i].y <> k * a[i].x + b) then
    begin
      flag := false;
    end;
  end;
end;

begin
  assign(f, 'TestData\InputR2.txt');
  reset(f);
  while not eof(f) do
  begin
    inc(i);
    read(f, a[i].x);
    read(f, a[i].y);
    inc(n);
  end;
  close(f);
  writeln('y = kx + b ; Enter k and b');
  readln(k, b);
  
  OnLine(flag, a, n, k, b);
  
  if (flag) then
  begin
    writeln('All points belong your line');
  end
  else
  begin
    writeln('There are some points that do not belong to line');
  end;
end.