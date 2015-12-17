program S2;

uses
  crt;

type
  MySet = array of boolean;

var
  a: MySet;
  c: array of integer;
  n, en, k: integer;
  s: string;

procedure createSet(var a: MySet; n: integer);
begin
  setlength(a, n + 1);
end;

procedure createMass(var a: array of integer; n: integer);
begin
  setlength(a, n + 1);
end;

function find(var a: MySet; x: integer): boolean;
begin
  find := a[x];
end;

procedure show(c: MySet; n: integer);
var
  i: integer;
begin
  write('Ваше множество: ');
  for i := 0 to n do 
  begin
    if (c[i]) then
    begin
      write(i, ' ');
    end;
  end;
  writeln();
end;

procedure delete(var c: MySet; k: integer);
begin
  c[k] := false;
end;

procedure deleteAll(var c: MySet; n: integer);
var
  i: integer;
begin
  for i := 0 to n do
  begin
    c[i] := false;
  end;
  writeln('Множество очищено!');
end;

procedure add(var c: MySet; x, n: integer);
var
  presutstvuet: boolean;
begin
  presutstvuet := find(c, x);
  if (not presutstvuet) then
  begin
    c[x] := true;
  end;
end;

procedure caseAdd(var a: MySet; c: array of integer; n, en: integer);
var
  i: integer;
begin
  writeln('Введите кол-во чисел которые вы хотите записать в данное множество ');
  readln(en);
  createMass(c, en);
  if (en <> 0) then
  begin
    writeln('Введите числа которые вы заносите в множество');
    i := 0;
    while(i < en) do
    begin
      inc(i);
      readln(c[i]);
      if (c[i] <= n) and (c[i] >= 0) then
      begin
        add(a, c[i], n);
      end
      else
      begin
        writeln('Введённое число ', c[i], ' выходит за границы множества, введите другое число');
        i := i - 1;
      end; 
    end;
    writeln('Все числа занесены');
  end;
end;

procedure caseDelete(var a: MySet; k: integer);
begin
  writeln('Введите число которое вы хотите удалить из множества');
  readln(k);
  if (k <= n) and (k >= 0) then
  begin
    delete(a, k);
    writeln('Число удалено успешно!');
  end
  else
  begin
    writeln('Число ', k, ' нельзя удалить из множества, так как число выходет за его границы');
  end;
end;

procedure caseFind(a: Myset; k: integer);
begin
  writeln('Введите число, которое ищите');
  readln(k);
  if (k <= n) and (k >= 0) then
  begin
    if (find(a, k)) then
    begin
      writeln('Число ', k, ' присутствует в данном множестве');
    end 
    else
    begin
      writeln('Вашего числа нет в данном множестве');
    end;
  end
  else
  begin
    writeln('Вашего числа нет в данном множестве');
  end;
end;

begin
  writeln('Введите максимальное число множества ');
  readln(n);
  createSet(a, n);
  
  writeln('Пользуйтесь операторами чтобы работать с вашим множеством');
  writeln('<добавить> - Добавить в ваше множество числа');
  writeln('<удалить> - Удалить число из множества');
  writeln('<показать> - Показать ваше множество');
  writeln('<проверить> - Проверить существует ли число в вашем множестве число');
  writeln('<выход> - Завершить работу с множеством');
  writeln('<очистить> - Зануляет ваше множество');
  writeln('Все операторы пишуться с маленькой буквы, без пробелов и без дополнительных символов!');
  
  while (s <> 'выход') do
  begin
    readln(s);
    case s of
      'добавить': caseAdd(a, c, n, en);
      'удалить': caseDelete(a, k);
      'показать': show(a, n);
      'проверить': caseFind(a, k);
      'очистить': deleteAll(a, n);
    else 
      begin
        if (s <> 'выход') then 
        begin
          writeln(s, ' не является оператором');
        end; 
      end;
    end;
  end;
end.
