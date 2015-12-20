type
  ar = array [0..100] of integer;
var
  a: ar;
  b: ar;
  i, j, n, m, k: integer;
  f1, f2: text;
  
   procedure CheckOnEnter(a, b: ar; n, m: integer; var k: integer);
  var
  i, j: integer;
  begin
  j := 1;
    for i := 1 to n do
    begin
      if (a[i] = b[j]) then  inc(j)
      else j := 1;
      if (j = m) then break;
    end;
    if (j = m) then k :=  i - m + 2
    else k := -1;
  end;

begin
  assign(f1, 'TestData\1INPUTOF1.txt');
  assign(f2, 'TestData\2INPUTOF1.txt');
  reset(f1);
  reset(f2);
  while (a[i] <> -1) do
  begin
    inc(i);
    read(f1, a[i]);
    inc(n);
  end;
  while (b[j] <> -1) do
  begin
    inc(j);
    read(f2, b[j]);
    inc(m);
  end;
  close(f1);
  close(f2);
  
  if (m < n) then
  begin
   CheckOnEnter(a, b, n - 1, m - 1, k);
    if (k <> -1) then writeln('Your 1 file include 2 since ', k, ' place');
  end
  else
  begin
   CheckOnEnter(b, a, m - 1, n - 1, k);
     if (k <> -1) then writeln('Your 2 file include 1 since ', k, ' place');
  end;
  
  if (k = -1) then 
  begin
    writeln('files is not include each ather');
  end;
end.