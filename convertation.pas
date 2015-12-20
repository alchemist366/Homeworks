var
  c: char;
  x: integer;

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

begin
  readln(c);
  x := convertation(c);
  writeln(x);
end.