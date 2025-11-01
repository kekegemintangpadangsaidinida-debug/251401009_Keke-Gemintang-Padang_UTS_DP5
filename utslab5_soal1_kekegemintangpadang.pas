program cici_punya_toko; {Nama program}
uses crt;

var {Deklarasi variabel}
buku, pulpen, pensil, penghapus, penggaris, diskon: integer;
potongan, seluruhpotongan, pajak, totalakhir, totalawal : real;
metode: string;

begin
clrscr; {Membersihkan layar sebelum program dijalankan}
//BERIKUT TAMPILAN DAFTAR HARGA BARANG YANG ADA DI CICI PUNYA TOKO
writeln ('1. Harga Buku   = Rp 25.000');
writeln ('2. Harga Pulpen = Rp  5.000');
writeln ('3. Pensil       = Rp  3.000');
writeln ('4. Penghapus    = Rp  2.000');
writeln ('5. Penggaris    = Rp  4.000');
writeln; {Agar baris berikutnya berada dibawah}

{BERIKUT INPUTAN JUMLAH MASING-MASING BARANG}
write ('Masukkan Jumlah Buku      = ');
readln (buku);
write ('Masukkan Jumlah Pulpen    = ');
readln (pulpen);
write ('Masukkan Jumlah Pensil    = ');
readln (pensil);
write ('Masukkan Jumlah Penghapus = ');
readln (penghapus);
write ('Masukkan Jumlah Penggaris = ');
readln (penggaris);

//BERIKUT OPERASI PERHITUNGAN TOTAL HARGA AWAL SEBELUM DISKON
totalawal := (buku * 25000) + (pulpen * 5000) + (pensil * 3000) + (penghapus * 2000) + (penggaris * 4000);
if  (totalawal >= 100000) then {INI ADALAH BAGIAN KONDISI UNTUK PENENTUAN POTONGAN HARGA 10% TERHADAP HARGA AWAL 100.000}
    begin 
    potongan := totalawal * 0.10; {JIKA TOTAL AWAL 100.000 MENDAPAT POTONGAN 10%}
    end {TAMBAHAN POTONGAN 5.000 JIKA MENGGUNAKAN METODE Qris}
else 
    begin
    potongan := totalawal * 0; {JIKA TOTAL HARGA AWAL TIDAK SAMA DENGAN 100.000 MAKA POTONGAN = 0}
    end;

// BERIKUT INPUTAN UNTUK METODE PEMBAYARAN
write ('Metode Pembayaran (Qris/Tunai) : ');
readln (metode); 
writeln; {Agar baris berikutnya berada dibawah}

//CEK METODE PEMBAYARAN
if (metode = 'Qris') or (metode = 'qris') then
    begin
    diskon := 5000; {TAMBAHAN POTONGAN 5.000 JIKA MENGGUNAKAN METODE Qris}
    end {Dibagian ini saya minta maaf kak tidak menggunakan tanda (;) karena saat saya run malah eror:(}
else if (metode= 'Tunai') or (metode = 'tunai') then  {CEK METODE PEMBAYARAN TUNAI}
    begin
    pajak := totalawal * 0.05;                         {PAJAK 5% JIKA JIKA PEMBAYARAN TUNAI}
    end;

//TAMPILAN HASIL DARI PERHITUNGAN
writeln ('Total Harga Sebelum Discount  = Rp ', totalawal : 0 : 0);

seluruhpotongan := potongan + diskon;                  {PERHITUNGAN UNTUK KESELURUHAN POTONGAN HARGA}
writeln ('Seluruh Potongan dan Discount = Rp ', ' ', seluruhpotongan : 0 : 0);

totalakhir := totalawal - (potongan + diskon) + pajak; {PERHITUNGAN UNTUK TOTAL AKHIR HARGA YANG HARUS DIBAYAR}
writeln ('Total Akhir                   = Rp ', totalakhir : 0 : 0);

//UNTUK MENAHAN PROGRAM AGAR TIDAK LANGSUNG BERAKHIR
readln;
end.