
var
  a: array  of integer;
  b: array  of integer;
  i, j, n, m, l: integer;

function FindPlace(a, b: array of integer; n, m: integer): integer;
var
  i, j: integer;
begin
  j := 1;
  for i := 1 to n do
  begin
    if (a[i] = b[j]) then
    begin
      inc(j);
    end
    else
    begin
      j := 1;
    end;
    if (j = m) then break;
  end;
  
  if (j = m) then 
  begin
    FindPlace := i - m + 2;
  end
  else 
  begin
    FindPlace := -1;
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
    l := FindPlace(a, b, n, m);
  end
  else
  begin
    l := FindPlace(b, a, m, n);
  end;
  
  writeln(l);
end.