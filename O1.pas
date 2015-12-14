const n= 6;
var 
a: array[1..n] of integer;
i, j, k:integer;
begin
for i:= 1 to n do
begin
 readln(a[i]);
end;
for i:= n downto 1 do
begin
 for j:= 2 to i do
 begin
  if (a[j] < a[j - 1]) then
  begin
   k:= a[j - 1];
   a[j - 1]:= a[j];
   a[j]:= k;
  end;
 end;
end;
for i:= 1 to n do
begin
 write(a[i],' ');
end;
end.
