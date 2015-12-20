type
  m = array[1..100] of char;

var
  f: text;
  a: m;
  i, start, mStart, size, mSize: integer;
  
  procedure MaxOrNot(start, size: integer; var mstart, msize: integer);
  begin
    if (mSize < size) then
      begin
        mStart := start;
        mSize := size;
      end;
  end;

begin
  assign(f, 'TestData\INPUTF1.txt');
  reset(f);
  start := 1;
  while not eof(f)  do
  begin
    inc(i);
    read(f, a[i]); 
    if (a[i] = ' ') then
    begin
      size := i - start;
      MaxOrNot(start, size, mStart, mSize);
      start := i + 1;
    end;
  end;
  
  size := i - start + 1;
  MaxOrNot(start, size, mStart, mSize);
  
  close(f);
  writeln(mSize);
  for i := mStart to mStart + mSize - 1 do
  begin
    write(a[i]);
  end;
end.