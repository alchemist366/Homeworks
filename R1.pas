type
  koef = record
    chislitel: integer;
    znamenatel: integer
  end;

var
  a: array of koef;
  n, i, k: integer;
begin
  writeln('Введите максимальную степень');
  readln(n);
  setlength(a, n + 2);
  for i := 1 to n do
  begin
    writeln('введите коэфициент перед x^', n - i + 1, '. Сначала числитель, потом знаменатель' );
    readln(a[i].chislitel);
    readln(a[i].znamenatel)
  end;
  writeln('Введите свободный коэфициент. Сначала числитель, потом знаменатель');
  readln(a[n + 1].chislitel);
  readln(a[n + 1].znamenatel);
  writeln('Вы хотите поделить многочлен на x - ..');
  readln(k);
  for i:= 2 to n + 1 do
  begin
    a[i].chislitel := a[i].znamenatel * k * a[i - 1].chislitel + a[i - 1].znamenatel * a[i].chislitel;
    a[i].znamenatel := a[i].znamenatel * a[i - 1].znamenatel;
  end;
  write('Получившийся многочлен (x - ', k,')(');
  for i := 1 to n  do
   begin
    write(a[i].chislitel,'/',a[i].znamenatel, 'x^', n - i, ' + ' );
   end;
   write('0) + ', a[n + 1].chislitel,'/',a[n + 1].znamenatel);
end.
