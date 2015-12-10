type
  Matrix = array [1..5] of array[1..5] of integer ;

var
  a: matrix;

procedure readMatrix(var a: matrix);
var
  i, j: integer;
begin
  for i := 1 to 5 do
    for j := 1 to 5 do
    begin
      read(a[i, j]);
    end;
  writeln();
end;

procedure MagicSquare(var a: matrix);
var
  i, j, sum1,  sumstr, sumcolumn: integer;
  razm, sum: boolean;
begin
  razm := true;
  sum := true;
  sum1 := 0;
  for i := 1 to 5 do
  begin
    sum1 := sum1 + a[i, 1];
  end;
  for i := 1 to 5 do 
  begin
    sumstr := 0;
    sumcolumn := 0;
    for j := 1 to 5 do
    begin  
      if ((a[i, j] > 5) or (a[i, j] < 1)) then begin razm := false; end;
      sumstr := sumstr + a[i, j];
      sumcolumn := sumcolumn + a[j, i];
    end;
    if ((sum1 <> sumstr) or (sum1 <> sumcolumn)) then begin sum := false; end;
  end;
  if (sum = true) and (razm = true) then begin writeln('Ýòîò êâàäðàò ìàãè÷åñêèé'); end
  else begin writeln('Ýòîò êâàäðàò íå ìàãè÷åñêèé'); end;
end;

begin
  readMatrix(a);
  MagicSquare(a);
end.
