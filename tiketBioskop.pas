program PembelianTiketBioskop;

uses crt;

var
  jenis, hari, jumlah: integer;
  harga, total, diskon, bayar: real;

begin
  clrscr;

  writeln('=== PROGRAM PEMBELIAN TIKET BIOSKOP ===');
  writeln;

  writeln('Jenis Film:');
  writeln('1. Reguler (Rp30.000)');
  writeln('2. 3D      (Rp45.000)');
  writeln('3. IMAX    (Rp60.000)');
  write('Pilih jenis film [1-3]: ');
  readln(jenis);

  case jenis of
    1: harga := 30000;
    2: harga := 45000;
    3: harga := 60000;
  end;

  writeln;
  writeln('Hari:');
  writeln('1. Senin-Kamis');
  writeln('2. Jumat');
  writeln('3. Sabtu-Minggu');
  write('Pilih hari [1-3]: ');
  readln(hari);

  write('Jumlah tiket: ');
  readln(jumlah);

  { Menghitung harga awal }
  total := harga * jumlah;

  { Tambahan harga berdasarkan hari }
  if hari = 2 then
    total := total + (5000 * jumlah)
  else if hari = 3 then
    total := total + (10000 * jumlah);

  { Menentukan diskon }
  if total >= 200000 then
    diskon := total * (10 / 100)
  else if total >= 100000 then
    diskon := total * (5 / 100)
  else
    diskon := 0;

  bayar := total - diskon;

  writeln;
  writeln('=== HASIL PEMBELIAN ===');
  writeln('Harga awal       : Rp', total:0:2);
  writeln('Diskon           : Rp', diskon:0:2);
  writeln('Total yang bayar : Rp', bayar:0:2);

  readln;
end.