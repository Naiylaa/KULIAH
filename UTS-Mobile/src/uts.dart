//===========Kelas ABSTRAK============

abstract class Transportasi {
  String id;
  String nama;
  double _tarifDasar; //private
  int kapasitas;

  Transportasi (this.id, this.nama, this._tarifDasar, this.kapasitas);

  //Geter untuk tarif dasar (enkapsulasi)
  double get tarifDasar => _tarifDasar;

  //Method Abstrak$
  double hitungTarif(int jumlahPenumpang);

  // Method umum
  void tampilInfo(){
    print ('---Info Transportasi---');
    print ('ID          : $id');
    print ('Nama        : $nama');
    print ('Tarif Dasar : $_tarifDasar');
    print ('Kapasitas   : $kapasitas');
  }
}
//======KELAS TURUNAN TAKSI======
class Taksi extends Transportasi {
  double jarak; //km

  Taksi (String id, String nama, double tarifDasar, int kapasitas, this.jarak)
        :super(id, nama, tarifDasar, kapasitas);
  
  @override
  double hitungTarif(int jumlahPenumpang){
    return tarifDasar*jarak;
  }
  @override
  void tampilInfo() {
    super.tampilInfo();
    print('jenis     : Taksi');
    print('jarak     : $jarak km');

  }
}

//======KELAS TURUNAN BUS======
class Bus extends Transportasi {
  bool adaWifi;

  Bus(String id, String nama, double tarifDasar, int kapasitas, this.adaWifi)
     :super (id, nama, tarifDasar, kapasitas);

  @override
  double hitungTarif(int jumlahPenumpang) {
    return (tarifDasar*jumlahPenumpang) + (adaWifi ? 5000 : 0);
  }
  @override
  void tampilInfo() {
    super.tampilInfo();
    print('Jenis       : Bus');
    print('Ada Wifi    : ${adaWifi ? "Ya" : "Tidak"}');
  }
}

//========KLEAS TURUNAN PESAWAT=========
class Pesawat extends Transportasi {
  String KelasPenerbangan; //"Ekonomi" atau "Bisnis"

  Pesawat(String id, String nama, double tarifDasar, int kapasitas, this.KelasPenerbangan)
         :super(id, nama, tarifDasar, kapasitas);
  
  @override
  double hitungTarif(int jumlahPenumpang) {
    double faktor = (KelasPenerbangan == "Bisnis") ? 1.5 : 1.0;
    return tarifDasar * jumlahPenumpang * faktor;
  }
  @override
  void tampilInfo() {
    super.tampilInfo();
    print ('Jenis        : Pesawat');
    print ('Kelas        : $KelasPenerbangan');
  }
}
//====KELAS PEMESANAN=====
class Pemesanan {
  String idPemesanan;
  String namaPelanggan;
  Transportasi transportasi;
  int jumlahPenumpang;
  double totalTarif;

  Pemesanan (this.idPemesanan, this.namaPelanggan, this.transportasi, this.jumlahPenumpang, this.totalTarif);

  void cetakStruk() {
    print ('\n=======STRUK PEMESANAN=======');
    print ('Kode Pemesanan    :$idPemesanan');
    print ('Nama Pelanggan    :$namaPelanggan');
    print ('Transportasi      :$transportasi.nama');
    print ('Jumlah Penumpang  :$jumlahPenumpang');
    print ('Total Tarif       :${totalTarif.toStringAsFixed(2)}');
  }
  Map<String, dynamic> toMap(){
    return {
      'idPemesanan' : idPemesanan,
      'namaPelanggan' :namaPelanggan,
      'jumlahPenumpang' : jumlahPenumpang,
      'totalTarif' : totalTarif
    };
  }
}

//======FUNGSI GLOBAL======
Pemesanan buatPemesanan(Transportasi t, String nama, int jumlahPenumpang){
  double total = t.hitungTarif(jumlahPenumpang);
  String id = 'ORD-${DateTime.now().millisecondsSinceEpoch}';
  return Pemesanan(id, nama, t, jumlahPenumpang, total);
}

void tampilSemuaPemesanan(List<Pemesanan>daftar){
  print('\n===========RIWAYAT PEMESANAN================');
  for (var p in daftar) {
    p.cetakStruk();
  }
}

//============MAIN FUNCTION==============
void main () {
  //Membuat beberapa objek transportasi
  Taksi taksi1 = Taksi('T01', 'Blue Bird', 8000, 4, 12.5);
  Bus bus1 = Bus('B01', 'TransSofifi', 5000, 40, true);
  Pesawat pesawat1 = Pesawat('P01', 'Garuda Indonesia', 1500000, 180, 'Bisnis');

  //membuat beberapa pemesanan
  List <Pemesanan> daftarPemesanan = [];
  daftarPemesanan.add(buatPemesanan(taksi1, 'Naiyla', 2));
  daftarPemesanan.add(buatPemesanan(bus1, 'Ela', 10));
  daftarPemesanan.add(buatPemesanan(pesawat1, 'Serly', 3));

  //Menampilkan seluruh hasil transaksi
  tampilSemuaPemesanan(daftarPemesanan);
}

