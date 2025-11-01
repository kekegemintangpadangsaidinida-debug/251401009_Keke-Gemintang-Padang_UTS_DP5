program BintangIdamanku; {Nama program}
uses crt;

var
  i, j: integer;         {Deklarasi variabel untuk melakukan perulangan}

begin
  clrscr;                {Membersihkan layar sebelum program dijalankan}
  // Pola baris ke-1 hingga ke-3 (menaik) 
  for i := 1 to 3 do
    begin
      for j := 1 to i do 
        write('*');     {Untuk menampilkan perulangan penulisan (*) pada baris 1 hingga 3}
      writeln;          {Agar setiap selesai sekali perulangan, penulisan perulangan selanjutnya berada di baris selanjutnya}
    end;

  // Baris ke-4 berisi 8 bintang 
  for j := 1 to 8 do    {Maaf kak, dibagian ini saya tidak menggunakan bgin end, karena saat saya coba outputnya tidak sesuai}
    write('*');         {Untuk menampilkan perulangan penulisan (*) pada baris 4}
  writeln;              {Agar ketika selesai, penulisan selanjutnya berada di baris selanjutnya}

  // Baris ke-5 hingga ke-6 menurun 
  for i := 7 downto 6 do
    begin
      for j := 1 to i do
        write('*');     {Untuk menampilkan perulangan penulisan (*) pada baris 5 hingga 6}
      writeln;          {Agar setiap selesai sekali perulangan, penulisan perulangan selanjutnya berada di baris selanjutnya} 
    end;

  // Baris ke-7 naik lagi ke 7 bintang 
  for j := 1 to 7 do    {Maaf kak, dibagian ini saya tidak menggunakan bgin end, karena saat saya coba outputnya tidak sesuai}
    write('*');         {Untuk menampilkan perulangan penulisan (*) pada baris 7}
  writeln;              {Agar ketika selesai penulisan selanjutnya berada di baris selanjutnya}

  // Baris terakhir kembali ke 8 bintang 
  for j := 1 to 8 do    {Maaf kak, dibagian ini saya tidak menggunakan bgin end, karena saat saya coba outputnya tidak sesuai}
    write('*');         {Untuk menampilkan perulangan penulisan (*) pada baris 8}
  writeln;              {Agar ketika selesai penulisan selanjutnya berada di baris selanjutnya}

  // Jeda agar program tidak langsung keluar setelah berakhir
  readln;
end.