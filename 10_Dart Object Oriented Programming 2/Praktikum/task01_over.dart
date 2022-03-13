class BangunRuang{
  int panjang = 20;
  int lebar = 10;
  int tinggi = 10;
  volume(){
    return panjang * lebar * tinggi;
  }
}

class Kubus extends BangunRuang{
  int sisi;
  Kubus(this.sisi);
}

class Balok extends BangunRuang{
}

void main(){
  var k = Kubus(10);
  var b = Balok();
  var br = BangunRuang().volume();
  print(k);
  print(b);
  print(br);
}