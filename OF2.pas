type
  massive = array of integer;

var
  a, b, c: massive;
  i, j, n, m, en: integer;
  f1, f2, f3: text;

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
  setlength(a, 101);
  setlength(b, 101);
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
  setlength(c, 201);
  close(f1);
  close(f2);
  if (n > m) then 
  begin
    obedin(c, a, b, en, n - 1, m - 1);
  end
  else
  begin
    obedin(c, b, a, en, m - 1, n - 1);
  end;
  assign(f3, 'TestData\OutputOF2.txt');
  rewrite(f3);
  for i := 1 to en do
  begin
    write(f3, c[i], ' ');
  end;
  close(f3);
end.
