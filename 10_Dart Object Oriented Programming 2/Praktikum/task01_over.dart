class bangunruang{
  var panjang = 10;
  var lebar = 15;
  var tinggi = 10;
  volume(){

  }
}

class kubus extends bangunruang{
  @override //kelas fungsi yang dari turunan class bangunruang
  volume(){
    var sisi = 20;
    var rumus = sisi * sisi * sisi;
    print (rumus);
  }
}

class balok extends bangunruang{
  @override
  volume(){
    var rumus = panjang * lebar * tinggi;
    print (rumus);
  }
}

void main(){
  var k = kubus().volume();
  var b = balok().volume();
}