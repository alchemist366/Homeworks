var
  a: array  of integer;
  b: array  of integer;
  i, j, n, m, k: integer;
  
  procedure CheckOnEnter(a, b: array of integer; n, m: integer; var k: integer);
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
  writeln('Enter the length of first array');
  readln(n);
  setlength(a, n + 1);
  writeln('Enter the length of second array');
  readln(m);
  setlength(b, m + 1);
  writeln('Enter your first array');
  for i := 1 to n do
  begin
    readln(a[i]);
  end;
  writeln('Enter your second array');
  for j := 1 to m do
  begin
    readln(b[j]);
  end;
  
  if (m < n) then
  begin
    CheckOnEnter(a, b, n, m, k);
    if (k <> -1) then writeln('Your 1 array include 2 since ', k, ' place');
  end
  else
  begin
     CheckOnEnter(b, a, m, n, k);
     if (k <> -1) then writeln('Your 2 array include 1 since ', k, ' place');
  end;
  if (k = -1) then 
  begin
    writeln('arrays is not include each ather');
  end;
end.
