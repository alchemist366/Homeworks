var
a: array of integer;
i, j, k, n: integer;
begin
write('������� ������ ������� ');
readln(n);
setlength(a, n + 1);
for i:= 1 to n - 1 do readln(a[i]);
a[n]:= 0;
j:= 1;
k:= 1;
for i:= 1 to n - 1 do
begin
 if (a[i] < a[i + 1]) then inc(j)
 else begin 
  if (k < j) then k:= j;
  j:= 1; 
  end;
end;
if j <> 0 then writeln('���������� ����� �������= ',k)
else writeln('���������� ����� �������= ',j);
end.