class BangunRuang{
  var panjang;
  var lebar;
  var tinggi;

  volume(){
    return 0;
  }

}

class Kubus extends BangunRuang{
  int sisi;
  Kubus(this.sisi);
  
  @override //kelas fungsi yang dari turunan class bangunruang
  volume(){
    var rumus = sisi * sisi * sisi;
    return rumus;
  }
}

class Balok extends BangunRuang{

  int p;
  int l;
  int t;
  Balok(this.p, this.l, this.t);

  @override
  volume(){
    var rumus = p * l * t;
    return rumus;
  }
}

void main(){
  var k = Kubus(10).volume();
  var b = Balok(20, 25, 10).volume();
  var br = BangunRuang();
  print(k);
  print(b);
  print(br);
}