import 'dart:io';
void main () {
  stdout.write("Masukkan umur : ");
  int umur = int.parse(stdin.readLineSync()!);

  if (umur <= 12) {
    print ("Anda Termasuk Kategori Anak-anak");
  } else if (umur <=17) {
    print ("Anda Termasuk Kategori Remaja");
  } else if (umur <=59) {
    print ("Anda Termasuk Kategori Dewasa");
  } else {
    print ("Anda Termasuk Kategori Lansia");
  }
}