type
  mass = array of integer;

var
  a: mass;
  i, n: integer;
  f: text;
  s: string;

function NumbToString(var x: integer): string;
var
  m: integer;
  str: string;
  flag:boolean;
begin
flag:= false;
if (x < 0) then
begin
x:= x * (-1);
flag:= true;
end;
if (x = 0) then NumbToString:= '0';
  while(x > 0) do
  begin
    m := x mod 10;
    str := m + str;
    x := x div 10;
  end;
  if (flag) then NumbToString := '-' + str
  else
  NumbToString := str;
end;

function MassToString(var a: mass; n: integer): string;
var
  i: integer;
  Str, x: string;
begin
  for i := 1 to n do
  begin
    x := NumbToString(a[i]);
    Str :=  Str + x + ' ';
  end;
  MassToString := Str;
end;

begin
  writeln('¬вести длинну масссива');
  readln(n);
  setlength(a, n + 1);
  for i := 1 to n do
  begin
    readln(a[i]);
  end;
  assign(f, 'Output.txt');
  s := MassToString(a, n);
  rewrite(f);
  writeln(f, s);
  close(f);
end.