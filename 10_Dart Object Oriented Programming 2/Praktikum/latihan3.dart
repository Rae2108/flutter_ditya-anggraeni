class Hewan{
  String nama;
  String jenis;
  Hewan(this.nama, this.jenis);
}

class Kucing extends Hewan{
  Kucing(String nama, String jenis) : super(nama, jenis);
  void lari(){
    print ('$nama $jenis Lari');
  }
}

class Unggas extends Hewan{
  String keluarga;
  Unggas(String nama, String jenis, this.keluarga) : super(nama, jenis);
}

class Burung extends Unggas{
  Burung(String nama, String jenis, String keluarga) : super(nama, jenis, keluarga);
  void terbang(){
    print('$nama $jenis $keluarga Terbang');
  }
}

void main(List<String> args) {
  var kucing = Kucing('Kucing', 'Anggora');
  var burung = Burung('Perkutut', 'Penerbang', 'Unggas');
  kucing.lari();
  burung.terbang();
}