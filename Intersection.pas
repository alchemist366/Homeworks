var
a, b: array of integer;
k, i, n, m:integer;
begin
writeln('������ ����� 1-�� �������');
readln(n);
writeln('������ ����� 2-�� �������');
readln(m);
setlength(a, n + 1);
setlength(b, m + 1);
k:= 0;
writeln('������ �������� 1-�� �������');
for i:= 1 to n do read(a[i]);
writeln('������ �������� 2-�� �������');
for i:= 1 to m do read(b[i]); 
k:= 1;
write('����������� �������� = ');
if (m > n) then
begin
 i:= 0;
 while(i < m) do
 begin
 inc(i);
 if (b[i] <= a[k]) then
  if (b[i] = a[k]) then
  begin
   write(a[i], ' ');
   inc(k);
  end
  else
  begin
   inc(k);
   i:= i - 1;
  end;
 end;
end
else
begin
 i:= 0;
 while(i < m) do
 begin
 inc(i);
 if (a[i] <= b[k]) then
  if (a[i] = b[k]) then
  begin
   write(a[i], ' ');
   inc(k);
  end
 else
 begin
  inc(k);
  i:= i - 1;
 end;
 end;
end;
if (k = 1) then write(0);
end.