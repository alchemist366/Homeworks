
var 
a: array  of integer;
b: array  of integer;
i, j, n, m: integer;
begin
writeln('������ ����� ������� �������');
readln(n);
setlength(a, n + 1);
writeln('������ ����� ������� �������');
readln(m);
setlength(b, m + 1);
writeln('������ ������ 1');
for i:= 1 to n do
 begin
  readln(a[i]);
 end;
writeln('������ ������ 2');
for j:= 1 to m do
 begin
  readln(b[j]);
 end;
j:= 1;
for i:= 1 to n do
begin 
 if (a[i] = b[j]) then  inc(j)
 else j:= 1;
 if (j = m) then break;
end;
if (j = m) then writeln('�����: ', i - m + 2)
else writeln(-1);
end.