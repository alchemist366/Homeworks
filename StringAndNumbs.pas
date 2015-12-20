type
  matrix = array of char;

var
  c: matrix;
  x, n, i: integer;

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
  writeln('Введите длину числа');
  readln(n);
  setlength(c, n + 1);
  for i := 1 to n do
  begin
    readln(c[i]);
    if (is_digit(c[i])) then writeln('Вы ввели число')
    else writeln('Вы ввели  не число');
    writeln('Ваше число = ', convertation(c[i]) );
  end;
  x := connectInt(c, n);
  writeln(x);
end.