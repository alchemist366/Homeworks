var 
s1, s2:String;
i, sum, k, l, j:integer;
function razr(i:integer):integer;
var
j, f:integer;
begin
f:= 1;
 for j:= 1 to i do
 f:= f * 10; 
razr:= f;
end;
begin
readln(s1);
readln(s2);
l:= 0;
if (Length(s1) >= Length(s2)) then
begin
j:= length(s2);
for i:= Length(s1) downto 1 do
 begin
  if (j > 0) then begin k:= ord(s2[j]) - 48; dec(j); end
  else k:= 0;
  if (k + ord(s1[i]) - 48 > 9) then begin 
  sum:= (sum + (k + ord(s1[i]) - 48 + l) * razr(length(s1) - i)) mod razr(length(s1) - i + 1);
  l:= 1;
  end
  else begin sum:= sum + (k + ord(s1[i]) - 48 + l) * razr(length(s1) - i); l:= 0; end;
 end;
end
else
begin
j:= length(s1);
for i:= Length(s2) downto 1 do
 begin
  if (j > 0) then begin k:= ord(s1[j]) - 48; dec(j); end
  else k:= 0;
  if (k + ord(s2[i]) - 48 > 9) then begin 
  sum:= (sum + (k + ord(s2[i]) - 48 + l) * razr(length(s2) - i)) mod razr(length(s2) - i + 1);
  l:= 1;
  end
  else begin sum:= sum + (k + ord(s2[i]) - 48 + l) * razr(length(s2) - i); l:= 0; end;
 end;
end;

writeln(sum);
end.
