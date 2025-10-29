Deskripsi Program: Permainan Tebak Angka
Program ini adalah aplikasi Command Line Interface (CLI) sederhana yang dibuat menggunakan Dart. Tujuannya adalah meminta pengguna menebak angka rahasia yang telah dipilih secara acak oleh komputer dalam rentang tertentu (secara default 1 hingga 100). Program akan memberikan petunjuk di setiap tebakan hingga pengguna berhasil menebak angka tersebut.


Fitur Utama Program
1. Angka Acak: Menghasilkan angka target yang benar-benar acak pada setiap permainan baru.
2. Petunjuk : Memberikan feedback langsung, memberitahu pengguna apakah tebakan mereka Terlalu BESAR atau Terlalu KECIL.
3. Penghitung Percobaan: Secara otomatis melacak dan mencatat jumlah total tebakan yang dibutuhkan pengguna.
4. Validasi Input: Mampu mendeteksi dan menolak input yang bukan angka (misalnya huruf atau simbol), mencegah program crash.
5. Perulangan Permainan: Menggunakan loop while untuk memungkinkan pengguna menebak berkali-kali sampai jawaban benar ditemukan.

Penjelasan Kode
Kode	                                                Fungsi Utama
1. import 'dart:io';        	                            Memungkinkan program untuk berinteraksi (menerima input dan mencetak output).
2. import 'dart:math';	                                  Memungkinkan program untuk menghasilkan angka acak.
3. final Random random = Random();                      	Menciptakan alat untuk mengacak angka.
4. final int targetNumber = ...;	                        Angka rahasia dipilih secara acak (misalnya, antara 1 dan 100).
5. int attempts = 0;	                                    Pencatat skor yang dimulai dari nol.
6. while (guess != targetNumber)	                        Kontrol utama yang menjalankan seluruh permainan. Loop ini akan terus berputar selama tebakan (guess) belum benar.
7. attempts++;                                           Mencatat bahwa satu percobaan telah dilakukan.
8. final int? parsedGuess = int.tryParse(input ?? '');	  Memastikan input adalah angka. Jika bukan, program menampilkan error dan meminta input baru (continue).
9. else if (guess < targetNumber)	                      Memberi tahu: Angka Terlalu KECIL.
10. else if (guess > targetNumber)	                      Memberi tahu: Angka Terlalu BESAR.

    <img width="1168" height="1091" alt="image" src="https://github.com/user-attachments/assets/011371e5-7d11-4ec5-b428-4f9514f85ed4" />







