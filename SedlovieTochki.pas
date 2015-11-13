type
masmax = array [1..5] of real;
masmin = array [1..5] of real;
Matrix = array [1..3] of array[1..5] of real;
var
a: matrix;
max: masmax;
min: masmin;
procedure readMatrix(var a: matrix);
var
i,j: integer;
begin
 for i:= 1 to 3 do
  for j:= 1 to 5 do
  begin
   read(a[i,j]);
  end;
  writeln();
end;
procedure SearchMaxMinInColumn(var a: matrix;var max: masmax;var min: masmin);
var
i, j: integer;
begin
 for j:= 1 to 5 do
 begin
   min[j]:= a[1,j];
   max[j]:= a[1,j];
  for i:= 2 to 3 do
  begin
   if (a[i,j] < min[j]) then begin min[j]:= a[i,j]; end;
   if (a[i,j] >= max[j]) then begin max[j]:= a[i,j]; end;
  end;
 end;
end;
procedure ShowSedlovInMatrix(var a: matrix;var max: masmax;var min:masmin);
var
i, j, k, f, l: integer;
 min1, max1:real;
begin
l:= 1;
 for i:= 1 to 3 do
 begin
   k:= 1;
   f:= 1;
   min1:= a[i,1];
   max1:= a[i,1];
  for j:= 2 to 5 do
  begin
   if (a[i,j] < min1) then begin min1:= a[i,j]; k:= j; end;
   if (a[i,j] >= max1) then begin max1:= a[i,j]; f:= j; end;
  end;
  for j:= 1 to 5 do
  begin
   if (a[i,j] = min1) then 
   begin
    if (min1 = max[j]) then begin writeln('Sedl ',l,' = ',min1); inc(l); end;
   end
  end;
  for j:= 1 to 5 do
  begin
   if (a[i,j] = max1) then 
   begin
    if (max1 = min[j]) then begin writeln('Sedl ',l,' = ',max1); inc(l); end;
   end
  end;
 end;
end;
begin
readMatrix(a);
SearchMaxMinInColumn(a,max,min);
ShowSedlovInMatrix(a,max,min);
end.