type
Matrix = array [1..3] of array[1..3] of integer ;
var
a: matrix;
procedure readMatrix(var a: matrix);
var
i,j: integer;
begin
 for i:= 1 to 3 do
  for j:= 1 to 3 do
  begin
   read(a[i,j]);
  end;
  writeln();
end;
procedure ShowMinInStr(var a: matrix);
var
i, min, j: integer;
begin
j:= 1;
 for i:= 1 to 3 do
 begin
 min:= a[i,j];
  for j:= 2 to 3 do
  begin
   if (a[i,j] < min) then begin min:= a[i,j]; end;
  end;
  writeln(min);
 end;
end;
begin
readMatrix(a);
ShowMinInStr(a);
end.
