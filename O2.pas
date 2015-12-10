type
  massive = array of integer;

var
  a: massive; 
  i, n: integer;

function FindMin(var a: massive; k, n: integer): integer;
var
  j, min, minNum: integer;
begin
  min := a[k];
  minNum := k;
  for j := k + 1 to n do
  begin
    if (a[j] < min) then
    begin
      min := a[j];
      minNum := j;
    end;
  end;
  FindMin := minNum;
end;

procedure SortMass2(var mass: massive; n: integer);
var
  i, min, f: integer;
begin
  for i := 1 to n do
  begin
    min := FindMin(mass, i, n);
    f := mass[i];
    mass[i] := mass[min];
    mass[min] := f;
  end;
end;

begin
  writeln('Ввести длину массива');
  readln(n);
  setlength(a, n + 1);
  writeln('Ввидите сам массив');
  for i := 1 to n do 
  begin
    readln(a[i]);
  end;
  SortMass2(a, n);
  for i := 1 to n do
  begin
    write(a[i], ' ');
  end;
end.
