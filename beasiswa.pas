program PenentuanBeasiswa;

uses crt;

var
  ipk, penghasilan: real;
  prestasi: integer;

begin
  clrscr;

  writeln('=== PROGRAM PENENTUAN BEASISWA ===');
  writeln;

  write('Masukkan IPK                  : ');
  readln(ipk);

  write('Masukkan penghasilan orang tua: Rp');
  readln(penghasilan);

  write('Masukkan jumlah prestasi      : ');
  readln(prestasi);

  writeln;

  { Mengecek IPK paling rendah }
  if ipk < 2.75 then
    writeln('IPK Tidak Memenuhi Syarat')
  
  else
  begin
    { Beasiswa penuh }
    if (ipk >= 3.75) and
       (penghasilan <= 5000000) and
       (prestasi >= 2) then
      writeln('Mendapatkan Beasiswa Penuh')

    { Beasiswa sebagian }
    else if (ipk >= 3.50) and
            (penghasilan <= 7000000) and
            (prestasi >= 1) then
      writeln('Mendapatkan Beasiswa Sebagian')

    { Tidak mendapatkan beasiswa }
    else
    begin
      if penghasilan > 7000000 then
        writeln('Penghasilan Tidak Memenuhi Syarat')
      else
        writeln('Tidak Mendapatkan Beasiswa');
    end;
  end;

  readln;
end.