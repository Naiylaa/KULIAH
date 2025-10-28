import 'dart:io';

void main() {
  // Input
  stdout.write("Masukkan angka bulan (1-12): ");
  int? bulan = int.parse(stdin.readLineSync()!);

  // Output menggunakan switch-case
  switch (bulan) {
    case 1:
      print("Januari");
      break;
    case 2:
      print("Februari");
      break;
    case 3:
      print("Maret");
      break;
    case 4:
      print("April");
      break;
    case 5:
      print("Mei");
      break;
    case 6:
      print("Juni");
      break;
    case 7:
      print("Juli");
      break;
    case 8:
      print("Agustus");
      break;
    case 9:
      print("September");
      break;
    case 10:
      print("Oktober");
      break;
    case 11:
      print("November");
      break;
    case 12:
      print("Desember");
      break;
    default:
      print("Bulan tidak ada!");
  }
}
