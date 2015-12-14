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
  while (st <> en - 1)do
  begin
    if (x > mass[st]) then 
    begin
      st := cr;
    end
    else
    begin
      en := cr;
    end;
    cr:= (st + en ) div 2;
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
    DihtamFinde := -1;
  end;
end;

begin
  writeln('Ввести длину массива');
  readln(n);
  setlength(a, n + 1);
  writeln('Введите сам массив');
  for i := 1 to n do 
  begin
    readln(a[i]);
  end;
  writeln('Введите элемент который нужно найти в массиве');
  readln(k);
  x := DihtamFinde(a, n, k);
  if x <> -1 then
  begin
    writeln('Ваш элемент находится в массиве на ', x, ' месте');
  end
  else
  begin
    writeln('Вашего элемента нет в данном массиве');
  end;
end.
