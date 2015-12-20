
var
  a: array  of integer;
  b: array  of integer;
  i, j, n, m, l: integer;

procedure FindThePlace(a, b: array of integer; n, m: integer; var l: integer );
var
  i, j, k, f: integer;
begin
  k := 0;
  for i := 1 to n - m + 1 do
  begin
    for j := 1 to m do
    begin
      if a[i + k] = b[j] then
      begin
        k := k + 1; 
        if (k = m) then 
        begin
          f := i;
          break;
        end;
      end
      else
      begin
        k := 0;
      end;
    end;
    if (k = m) then 
    begin
      break;
    end;
  end;
  
  if (f <> 0) then 
  begin
    l := f;
  end
  else 
  begin
    l := -1;
  end;
end;

begin
  writeln('Enter the length of the first array');
  readln(n);
  setlength(a, n + 1);
  writeln('Enter the length of second array');
  readln(m);
  writeln();
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
  writeln('');
  
  if (n > m) then 
  begin
    FindThePlace(a, b, n, m, l);
  end
  else
  begin
    FindThePlace(b, a, m, n, l);
  end;
  
  writeln(l);
  
end.