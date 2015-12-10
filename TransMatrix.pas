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
procedure ShowTransMatrix(var a: matrix);
var
i,j: integer;
begin
 for i:= 1 to 3 do
 begin
  for j:= 1 to 3 do
  begin
   write(a[j,i], ' ');
  end;
  writeln(' ');
 end;
end;
begin
readMatrix(a);
ShowTransMatrix(a);
end.
