program DeretFibonacci;    {Nama program}

uses crt;   

var
  n, i: integer;           {Variabel n untuk jumlah suku, i untuk penghitung perulangan}
  a, b, c, total: integer; {a dan b untuk dua suku pertama, c untuk hasil penjumlahan, total untuk jumlah keseluruhan}

begin
  clrscr;                  {Membersihkan layar sebelum program dijalankan}

  // Inputan untuk jumlah suku deret Fibonacci
  write('Masukkan nilai N: ');  
  readln(n);                    

  //Pemberian nilai
  a := 0;                  {Suku pertama deret Fibonacci}
  b := 1;                  {Suku kedua deret Fibonacci}
  total := 0;              {Inisialisasi total jumlah deret ke 0}

  // Menampilkan teks pembuka deret
  write('Sequence = ');   
  for i := 1 to n do       {Perulangan dari suku pertama sampai ke-n}
  begin
    write(a);              {Menampilkan setiap suku Fibonacci}

    if i < n then          {Pemberian kondisi jika i lebih besar dari umlah suku}
      begin
        write(', ');       {Menambahkan koma antar angka, tapi tidak di akhir deret}
      end;
    
    total := total + a;    {Menambahkan nilai suku ke total keseluruhan}
    c := a + b;            {Rumus Fibonacci: suku berikutnya = dua suku sebelumnya}
    a := b;                {Geser nilai b menjadi a untuk iterasi berikutnya}
    b := c;                {Geser nilai c menjadi b untuk iterasi berikutnya}
  end;

  // Pindah ke baris baru setelah menampilkan deret
  writeln;   

  // Menampilkan hasil jumlah total dari semua suku
  writeln('Total = ', total);  
  
  // Jeda agar program tidak langsung keluar setelah berakhir
  readln;   
end.
