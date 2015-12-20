const
  n = 9;

var
  h, x, b: real;
  j, i: integer;
  a: array[0..2] of real;
  c: array of array of real;

function Fi(c: array of array of real; i: integer): real;
var
  k: real;
  ii: integer;
begin
  k := 1;
  for ii := 0 to n - 1 do
  begin
    k := k * abs(c[i, ii]);
  end;
  Fi := k;
end;

function Ksy(c: array of array of real; i: integer): real;
var
  k: real;
  ii: integer;
begin
  k := c[i, 0];
  for ii := 1 to n - 1 do
  begin
    if (abs(c[i, ii]) > abs(c[i, ii - 1])) then
    begin
      k := abs(c[i, ii]);
    end;
  end;
  Ksy := k;
end;

function f(a, x: real): real;
begin
  f := sqrt(2 + sin(a + x)) + sqrt(2 - cos(a + x));
end;

begin
  readln(h, b, a[0], a[1], a[2]);
  setlength(c, 3);
  for i := 0 to 2 do
    setlength(c[i], n);
  for j := 0 to n - 1 do
  begin
    x := b + (j + 1) * h;
    for i := 0 to 2 do
    begin
      c[i, j] := f(a[i], x);
    end;
  end;
  for i := 0 to 2 do
  begin
    for j := 0 to n - 1 do
    begin
      writeln('y', j + 1, i + 1, '= ', c[i, j], ';');
    end;
    writeln();
    writeln();
  end;  
  for i := 0 to 2 do
  begin
    writeln('Fi(', i + 1, ')= ', Fi(c, i));
  end;
  for i := 0 to 2 do
  begin
    writeln('Ksy(', i + 1, ')= ', Ksy(c, i));
  end;
end.