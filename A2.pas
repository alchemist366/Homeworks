
var
  a: array  of integer;
  prefix: array  of integer;
  k, n, i: integer;
  pereodic: boolean;
  
function CheckPeriodic(c: array of integer; n, k: integer): boolean;
var
f, j, i:integer;
begin
  f := 0;
  j := 0;
  for i := k  to n do
  begin
    inc(j);
    if (c[i] = j) then
    begin
      if (j = k - 1) then 
      begin
        j := 0;
      end;
      inc(f);
    end
    else
    begin
      break;
    end;
  end;
  
  if (n - k + 1 = f) then
  begin
    CheckPeriodic := true;
  end
  else
  begin
    CheckPeriodic := false;
  end;
end;

procedure FindPrefix(var c: array of integer; a: array of integer; n:integer; var k: integer);
var
i, j: integer;
begin
  k := 1;
  j := 1;
  c[1] := 0;
  
  for i := 2 to n do
  begin
    if (a[i] = a[j]) then 
    begin
      c[i] := j; 
      inc(j);
    end
    else 
    begin
      j := 1; 
      c[i] := 0;
    end;
    if (j > k) then 
    begin
      k := j;
    end;
  end;
end;

begin
  writeln('Write length of massive');
  readln(n);
  setlength(a, n + 1);
  setlength(prefix, n + 1);
  writeln('Write elements of massive');
  for i := 1 to n do
  begin
    read(a[i]);
  end;
  
  FindPrefix(prefix, a, n, k);
  pereodic:= CheckPeriodic(prefix, n, k);
  
  if (pereodic) then
  begin
    writeln('array is periodic ');
  end
  else
  begin
    writeln('array is not periodic ');
  end;
end.