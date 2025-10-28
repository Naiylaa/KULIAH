class Mahasiswa {
  String? nama;
  int? npm;
  String? prodi;
  int? angkatan;

  void infoDisplay(nama, npm, prodi, angkatan) {
    print("Nama     : $nama");
    print("NPM      : $npm");
    print("Prodi    : $prodi");
    print("Angkatan : $angkatan");
  }
}
void main() {
  Mahasiswa mhs1 = Mahasiswa();

  mhs1.infoDisplay("Naiyla S. Karim", "07352311164", "Informatika", 2023);

  print(""); 

  Mahasiswa mhs2 = Mahasiswa();
  mhs2.infoDisplay("Nurlaila Ali", "07352311169", "Sistem Informasi", 2023);
}
