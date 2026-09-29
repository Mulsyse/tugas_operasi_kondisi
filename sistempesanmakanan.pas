program SistemPemesananMakanan;
uses crt;

var
  kodeMakanan, jumlahPesanan, statusPelanggan: integer;
  hargaMakanan, totalHarga, jumlahDiskon, totalBayar: real;
  persenDiskon: real;
  namaMakanan: string;
  valid: boolean;

begin
  clrscr;
  valid := true;

  writeln('Masukkan Kode Makanan: ');
  writeln('1= Nasi Goreng');
  writeln('2= Mie Goreng');
  writeln('3= Ayam Geprek');
  writeln('4= Steak');
  readln(kodeMakanan);
  
  write('Masukkan Jumlah Pesanan: ');
  readln(jumlahPesanan);

  if jumlahPesanan <= 0 then
  begin
    writeln('Jumlah pesanan tidak valid');
  end
  else if jumlahPesanan > 10 then
  begin
    writeln('Pesanan terlalu banyak');
  end
  else
  begin
    case kodeMakanan of
      1: begin namaMakanan := 'Nasi Goreng'; hargaMakanan := 20000; end;
      2: begin namaMakanan := 'Mie Goreng';  hargaMakanan := 18000; end;
      3: begin namaMakanan := 'Ayam Geprek'; hargaMakanan := 25000; end;
      4: begin namaMakanan := 'Steak';       hargaMakanan := 50000; end;
      else
      begin
        writeln('Kode makanan tidak valid');
        valid := false;
      end;
    end;

    if valid then
    begin
      write('Masukkan Status Pelanggan (1 = Member, 2 = Non-member): ');
      readln(statusPelanggan);

      totalHarga := hargaMakanan * jumlahPesanan;

      if statusPelanggan = 1 then
      begin
        if totalHarga >= 100000 then
          persenDiskon := 0.15
        else if totalHarga >= 50000 then
          persenDiskon := 0.10
        else
          persenDiskon := 0.05;
      end
      else if statusPelanggan = 2 then
      begin
        if totalHarga >= 100000 then
          persenDiskon := 0.05
        else
          persenDiskon := 0.0;
      end
      else
      begin
        writeln('Status pelanggan tidak valid');
        valid := false;
      end;

      if valid then
      begin
        jumlahDiskon := totalHarga * persenDiskon;
        totalBayar := totalHarga - jumlahDiskon;

        writeln;
        writeln('=== RINCIAN PEMBAYARAN ===');
        writeln('Nama Makanan       : ', namaMakanan);
        writeln('Harga Makanan      : Rp ', hargaMakanan:0:0);
        writeln('Total Harga        : Rp ', totalHarga:0:0);
        writeln('Diskon             : Rp ', jumlahDiskon:0:0);
        writeln('Total Harus Dibayar: Rp ', totalBayar:0:0);
      end;
    end;
  end;
  readln;
end.