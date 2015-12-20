type
  massive = array of integer;

var
  a: massive;
  i, n, x, k: integer;

function DihtamFinde(var mass: massive; n, x: integer): integer;
var
  cr, st, en: integer;
begin
  st := 1;
  en := n;
  cr := (st + en ) div 2;
  while (st <> en - 1) do
  begin
    if (x > mass[st]) then 
    begin
      st := cr;
    end
    else
    begin
      en := cr;
    end;
    cr := (st + en ) div 2;
  end; 
  if (x = mass[st]) then 
  begin
    DihtamFinde := st;
  end
  else
  if (x = mass[en]) then
  begin
    DihtamFinde := en;
  end
  else
  begin
    if (x = mass[st - 1]) then
    begin
      DihtamFinde := st - 1; 
    end
    else
    begin
      DihtamFinde := -1;
    end;
  end;
end;

begin
  writeln('Enter the length of your array');
  readln(n);
  setlength(a, n + 1);
  writeln('Enter your array');
  for i := 1 to n do 
  begin
    readln(a[i]);
  end;
  writeln('Enter the element eoy need to find in your array');
  readln(k);
  x := DihtamFinde(a, n, k);
  if x <> -1 then
  begin
    writeln('Your element stand on ', x, ' place');
  end
  else
  begin
    writeln('The element is not exist in your array');
  end;
end.