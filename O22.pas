type
  massive = array of integer;

var
  a: massive; 
  i, n: integer;

function FindPosition(var a: massive; n: integer): integer;
var
  j, position: integer;
begin
  position := n;
  for j := 0 to n - 1 do
  begin
    if ((a[j] < a[n]) and (a[j + 1] >= a[n])) then
    begin
      position := j + 1;
    end;
  end;
  FindPosition := position;
end;

procedure SortMass3(var mass: massive; n: integer);
var
  i, x, k: integer;
begin
  x := FindPosition(mass, n);
  k := a[n];
  for i := n downto x + 1 do
  begin
    a[i] := a[i - 1];
  end;
  a[x] := k;
end;

begin
  writeln('Enter the length of array');
  readln(n);
  setlength(a, n + 2);
  writeln('Enter your array');
  for i := 1 to n do 
  begin
    readln(a[i]);
  end;
  writeln('Enter the element you need to insert');
  readln(a[n + 1]); 
  SortMass3(a, n + 1);
  writeln('Converted array');
  for i := 1 to n + 1 do
  begin
    write(a[i], ' ');
  end;
end.
