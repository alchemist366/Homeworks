type
  m = array[1..100] of char;

var
  f: text;
  a: m;
  i, start, mStart, size, mSize: integer;

begin
  assign(f, 'file.txt');
  reset(f);
  start:= 1;
  while not eof(f) do
  begin
    inc(i);
    read(f, a[i]); 
    if (a[i] = ' ') then
    begin
      size:= i - start;
      if (mSize < size) then
      begin
      mStart:= start;
      mSize:= size;
      end;
      start:= i + 1;
    end;
  end;
  close(f);
  writeln(mSize);
  for i:= mStart to mStart + mSize - 1 do
  begin
   write(a[i]);
  end;
end.