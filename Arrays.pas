
var 
a: array  of integer;
b: array  of integer;
i, j, k, f, n, m: integer;
begin
writeln('¬вести длину первого массива');
readln(n);
setlength(a, n + 1);
writeln('¬вести длину второго массива');
readln(m);
writeln();
setlength(b, m + 1);
for i:= 1 to n do
 begin
  readln(a[i]);
 end;
 writeln();
for j:= 1 to m do
 begin
  readln(b[j]);
 end;
k:= 0;
for i:= 1 to n - m + 1 do
begin 
 for j:= 1 to m do
 begin
  if a[i + k] = b[j] then
  begin
   k:= k + 1; 
   if (k = m) then begin f:= i; break; end;
  end
  else k:= 0;
 end;
 if (k = m) then begin break; end;
end;
if (f <> 0) then writeln('ќтвет: ', f)
else writeln(-1);
end.