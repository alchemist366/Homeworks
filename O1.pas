type
  ar = array[1..6] of integer;

var
  a: ar;
  i: integer;

procedure Sort1(var a: ar);
var
  i, j, k: integer;
begin
  for i := 6 downto 1 do
  begin
    for j := 2 to i do
    begin
      if (a[j] < a[j - 1]) then
      begin
        k := a[j - 1];
        a[j - 1] := a[j];
        a[j] := k;
      end;
    end;
  end;
end;

begin
  for i := 1 to 6 do
  begin
    readln(a[i]);
  end;
  Sort1(a);
  for i := 1 to 6 do
  begin
    write(a[i], ' ');
  end;
end.