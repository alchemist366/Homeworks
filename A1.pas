var
  n1, n2: String;
  sum: integer;

function step(i: integer): integer;
var
  j, f: integer;
begin
  f := 1;
  for j := 1 to i do
    f := f * 10; 
  step := f;
end;

function INum(str: string; i: integer): integer;
begin
  INum := ord(str[i]) - 48;
end;

procedure sumNum(s1, s2: string; var sum: integer);
var
  i, k, l, j, x, y: integer;
begin
  
  l := 0;
  j := length(s2);
  
  for i := Length(s1) downto 1 do
  begin
    if (j > 0) then 
    begin
      y := INum(s2, j);
      dec(j);
    end
    else 
    begin
      y := 0;
    end;
    
    x := INum(s1, i);
    if (y + x > 9) then begin
      sum := (sum + (y + x + l) * step(length(s1) - i)) mod step(length(s1) - i + 1);
      l := 1;
    end
    else 
    begin
      sum := sum + (y + x + l) * step(length(s1) - i); l := 0; 
    end;
  end;
  
end;

begin
  writeln('input first number');
  readln(n1);
  writeln('input second number');
  readln(n2);
  
  if (Length(n1) >= Length(n2)) then
  begin
    sumNum(n1, n2, sum);
  end
  else
  begin
    sumNum(n2, n1, sum);
  end;
  
  writeln(sum);
end.