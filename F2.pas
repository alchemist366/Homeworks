type
  matrix = array [1..200] of char;

var
  c: matrix;
  x, i, j, sum: integer;
  f, f2: text;

function step(i: integer): integer;
var
  j, f: integer;
begin
  f := 1;
  for j := 1 to i do
  begin
    f := f * 10;
  end;
  step := f;
end;

function is_digit(c: char): boolean;
begin
  is_digit := (c >= '0') and (c <= '9');
end;

function convertation(c: char): integer;
begin
  
  if (is_digit(c)) then 
  begin
    convertation := integer(c) - integer('0'); 
  end
  
  else 
  begin
    convertation := -1;
  end;
end;

function connectInt(var c: matrix; n: integer): integer;
var
  i, k, s: integer;
begin
  s := 0;
  for i := 1 to n do
  begin
    k := convertation(c[i]);
    if (k <> -1) then 
    begin
      s := k * step(n - i) + s;
    end
    else
    begin
      s := -1;
      break;
    end;
  end;
  if (s <> -1) then connectInt := s
  else connectInt := -1;
end;

begin
  assign(f, 'TestData\INPUTF2.txt');
  reset(f);
  i := 0;
  
  while not eof(f) do
  begin
    inc(i);
    read(f, c[i]);
    if (c[i] = ' ') then
    begin
      x := connectInt(c, i - 1);
      if (x <> -1) then sum := sum + x;
      for j := 1 to i do
      begin
        c[j] := ' ';
      end;
      i := 0;
    end;
  end;
  
  x := connectInt(c, i );
  if (x <> -1) then sum := sum + x;
  
  close(f);
  assign(f2, 'TestData\OUTPUTF2.txt');
  rewrite(f2);
  write(f2, sum);
  close(f2);
end.