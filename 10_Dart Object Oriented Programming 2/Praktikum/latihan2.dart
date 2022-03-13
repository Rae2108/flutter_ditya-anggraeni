class Mobil{
  String merkMobil;
  String tipeMobil;
  double bahanBakar;
  double jarakTempuh;
  Mobil(this.merkMobil, this.tipeMobil, this.bahanBakar, this.jarakTempuh);

  double jalan(double km){
    if(km > 0){
      km = km /10;
      jarakTempuh += km;
      return bahanBakar -= km;
    }else{
      return bahanBakar;
    }
  }

  double isiBahanBakar(int n ){
    return bahanBakar += n;
  }

  double infoBahanBakar(){
    return bahanBakar;
  }

  double infoJarakTempuh(){
    return jarakTempuh;
  }
}

void main(List<String> args) {
  var mobil = Mobil('Avanza', 'Matic', 100, 1000);
  var jalan1 = mobil.jalan(101);
  print(mobil.infoBahanBakar());
  print (mobil.infoJarakTempuh());
  var isi = mobil.isiBahanBakar(100);
  print (mobil.infoBahanBakar());
}