type
  masmax = array  of real;
  masmin = array  of real;
  Matrix = array of array of real;

var
  a: matrix;
  max: masmax;
  min: masmin;
  m, n, i: integer;

procedure readMatrix(var a: matrix; n, m: integer);
var
  i, j: integer;
begin
  writeln('Enter matrix');
  for i := 1 to n do
  begin
    for j := 1 to m do
    begin
      read(a[i, j]);
    end;
  end;
  writeln();
end;

procedure SearchMaxMinInColumn(var a: matrix; var max: masmax; var min: masmin; n, m: integer);
var
  i, j: integer;
begin
  for j := 1 to m do
  begin
    min[j] := a[1, j];
    max[j] := a[1, j];
    for i := 2 to n do
    begin
      if (a[i, j] < min[j]) then 
      begin
        min[j] := a[i, j]; 
      end;
      if (a[i, j] >= max[j]) then 
      begin
        max[j] := a[i, j]; 
      end;
    end;
  end;
end;

procedure ShowSedlovInMatrix(var a: matrix; var max: masmax; var min: masmin; n, m: integer);
var
  i, j, k, f, l: integer;
  min1, max1: real;
begin
  l := 1;
  for i := 1 to n do
  begin
    k := 1;
    f := 1;
    min1 := a[i, 1];
    max1 := a[i, 1];
    for j := 2 to m do
    begin
      if (a[i, j] < min1) then
      begin
        min1 := a[i, j];
        k := j;
      end;
      if (a[i, j] >= max1) then
      begin
        max1 := a[i, j];
        f := j;
      end;
    end;
    for j := 1 to m do
    begin
      if (a[i, j] = min1) then 
      begin
        if (min1 = max[j]) then 
        begin
          writeln('Sedl ', l, ' = ', min1); 
          inc(l);
        end;
      end;
      if (a[i, j] = max1) then 
      begin
        if (max1 = min[j]) then 
        begin
          writeln('Sedl ', l, ' = ', max1); 
          inc(l); 
        end;
      end;
    end;
  end;
end;

begin
  writeln('create matrix n * m');
  writeln('Write n');
  readln(n);
  writeln('Write m');
  readln(m);
  setlength(a, n + 1);
  for i := 1 to n do
  begin
    setlength(a[i], m + 1);
  end;
  
  setlength(max, n + 1);
  setlength(min, n + 1);
  
  readMatrix(a, n, m);
  SearchMaxMinInColumn(a, max, min, n, m);
  ShowSedlovInMatrix(a, max, min, n, m);
end.