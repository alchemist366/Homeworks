type
  mass = array of integer;

var
  a: mass;
  i, n, x, k: integer;
  flag: boolean;

procedure SharpOfEratosfen(var c: mass; n: integer);
var
  i, j: integer;
begin
  for i := 1 to n do
  begin
    c[i] := 1;
  end;
  for i := 2 to n do
  begin
    if (c[i] = 1) then 
    begin
      j := i + i;
      while (j < n + 1) do 
      begin
        c[j] := 0;
        j := j + i;
      end;
    end;
  end;
end;

begin
  
  readln(x);
  setlength(a, x + 1);
  SharpOfEratosfen(a, x);
  for i := 1 to x do 
  begin
    if (a[i] = 1) then
    begin
      write(i, ' ');
    end;
  end;
end.
