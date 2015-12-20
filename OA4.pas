type
  massive = array of integer;

var
  a, b, c: massive;
  i, n, m, en: integer;

procedure obedin(var c: massive; a, b: massive; var en: integer; n, m: integer);
var
  i, k, j: integer;

begin
  i := 1;
  k := 1;
  j := 1;
  while (i < n) or (k < m) do
  begin
    if (a[i] < b[k]) then
    begin
      c[j] := a[i];
      inc(i);
    end
    else
    begin
      if (a[i] > b[k]) then
      begin
        c[j] := b[k];
        inc(k);
      end
      else
      begin
        if (a[i] = b[k]) then
        begin
          c[j] := a[i];
          inc(i);
          inc(k);
        end;
      end;
     end; 
     inc(j)
  end;
  
  if (c[j - 1] <> b[k]) then
  begin
    if (a[i] = b[k]) then
    begin
      c[j] := a[i];
      inc(i);
    end
    else
    begin
      c[j] := b[k]; 
    end;
    inc(j);
  end;
  
  for k := i to n do
  begin
    c[j] := a[i];
    inc(j);
  end;
  en := j - 1;
end;

begin
  writeln('Enter the length of I array');
  readln(n);
  setlength(a, n + 1);
  writeln('Enter your I array');
  for i := 1 to n do 
  begin
    readln(a[i]);
  end;
  writeln('Enter the length of II array');
  readln(m);
  setlength(b, m + 1);
  writeln('Enter your II array');
  for i := 1 to m do 
  begin
    readln(b[i]);
  end;
  setlength(c, m + n + 1);
  
  if (n > m) then 
  begin
    obedin(c, a, b, en, n, m);
  end
  else
  begin
    obedin(c, b, a, en, m, n);
  end;
  
  for i := 1 to en do
  begin
    write(c[i], ' ');
  end;
end.