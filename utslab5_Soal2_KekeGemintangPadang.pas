program TebakAngkaRahasia;              {NAMA PROGRAM}
uses crt;

var
  angkarahasia, tebakan: integer;       {Deklarasi variabel untuk angka rahasia dan tebakan pengguna}

begin
  clrscr;                               {Membersihkan layar sebelum program dijalankan}
  
  // Menentukan angka rahasia (contoh angka rahasia = 7)
  angkarahasia := 7;
  
  // Berikut perulangan program untuk menebak angka hingga angka tebakan bernilai benar
  repeat
    write('Masukkan Tebakan: ');        {Menampilkan perintah agar pengguna memasukkan angka}
    readln(tebakan);                    {Membaca input tebakan}
    
    if tebakan > angkarahasia then      {Berikut Pengecekan apakah tebakan lebih besar dari angka rahasia}
      writeln('Terlalu besar!')         {Jika tebakan lebih besar, akan tampil pesan ini}

    else if tebakan < angkarahasia then {Berikut Pengecekan apakah tebakan lebih kecil dari angka rahasia}
      writeln('Terlalu kecil!')         {Jika tebakan lebih kecil, akan tampil pesan ini}

    else {Jika tebakan sama dengan angka rahasia}
      writeln('Selamat, kamu benar!');  {Jika tebakan lebih benar, akan tampil pesan ini}
 
  until tebakan = angkarahasia;         {Perulangan berhenti jika tebakan sudah benar}
  
  // Jeda agar program tidak langsung keluar setelah berakhir
  readln;   
end.