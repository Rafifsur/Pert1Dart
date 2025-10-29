import 'dart:io';
import 'dart:math';

void main() {
  
  const int min = 1;
  const int max = 100;
  
  
  final Random random = Random();
 
  final int targetNumber = random.nextInt(max - min + 1) + min; 
  
  int guess = -1; 
  int attempts = 0;
  
  print("====================================");
  print("🎲 Permainan Tebak Angka");
  print("Coba tebak angka antara $min dan $max.");
  print("====================================");
  

  while (guess != targetNumber) {
    attempts++;
    stdout.write("Percobaan ke-$attempts. Masukkan tebakan Anda: ");
    
    
    final String? input = stdin.readLineSync();
    
  
    final int? parsedGuess = int.tryParse(input ?? '');

    if (parsedGuess == null) {
      print("❌ Input tidak valid. Harap masukkan bilangan bulat.");
      continue; 
    }

    guess = parsedGuess; 
    

    if (guess < min || guess > max) {
      print("⚠️ Jawaban salah! Tebakan harus antara $min dan $max.");
    } else if (guess < targetNumber) {
      print("🔽 Jawaban salah! Angka terlalu KECIL. Coba lagi.");
    } else if (guess > targetNumber) {
      print("🔼 Jawaban salah! Angka terlalu BESAR. Coba lagi.");
    }
  }


  print("\n🎉 SELAMAT! Anda berhasil menebak angka $targetNumber.");
  print("Total percobaan: $attempts kali.");
  print("====================================");
}