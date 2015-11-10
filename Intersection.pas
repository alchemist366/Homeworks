var
a, b: array of integer;
k, i, n, m:integer;
begin
writeln('¬вести длину 1-го массива');
readln(n);
writeln('¬вести длину 2-го массива');
readln(m);
setlength(a, n + 1);
setlength(b, m + 1);
k:= 0;
writeln('¬вести значени€ 1-го массива');
for i:= 1 to n do read(a[i]);
writeln('¬вести значени€ 2-го массива');
for i:= 1 to m do read(b[i]); 
k:= 1;
write('ѕересечение массивов = ');
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