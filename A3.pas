var
  a: array of integer;
  i, j, k, n: integer;
procedure FindMaxStairs(c: array of integer; n: integer; var k: integer);
var
i, j: integer;
begin 
  j := 1;
  k := 1;
  for i := 1 to n - 1 do
  begin
  
    if (a[i] < a[i + 1]) then 
    begin
      inc(j);
    end
    else 
    begin
      if (k < j) then
      begin
        k := j;
      end;
      j := 1; 
    end;
    
    if (k < j) then
      begin
        k := j;
      end;
  end;
end;
begin
  write('Write length of array ');
  readln(n);
  writeln('Write elements of array');
  setlength(a, n + 1);
  for i := 1 to n  do
  begin
    readln(a[i]);
  end;
 
  FindMaxStairs(a, n, k);
  
  writeln('the longest stairs = ', k)

end.