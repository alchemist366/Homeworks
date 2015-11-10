
var 
a: array  of integer;
prefix: array  of integer;
i, j, k, n, m, f: integer;
begin
writeln('Ввести длину массива');
readln(n);
setlength(a, n + 1);
setlength(prefix, n + 1);
writeln('Ввести сам массив= ');
for i:= 1 to n do
 begin
  read(a[i]);
 end;
 k:= 1;
 j:= 1;
 prefix[1]:= 0;
for i:= 2 to n do
begin 
 if (a[i] = a[j]) then begin prefix[i]:= j; inc(j); end
 else begin j:= 1; prefix[i]:= 0; end;
 if (j > k) then k:= j;
end;
f:= 0;
i:= k ;
j:= 0;
for i:= k  to n do
begin
 inc(j);
 if (prefix[i] = j) then
 begin
  if (j = k - 1) then j:=0; inc(f);
 end
 else break;
end;
if (n - k + 1 = f) then writeln('последовательность периодична ')
else writeln('последовательность не периодична ');
end.