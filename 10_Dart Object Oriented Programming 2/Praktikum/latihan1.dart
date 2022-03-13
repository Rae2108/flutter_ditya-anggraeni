class Pistol {
  String nama;
  int jumlahPeluru;
  Pistol(this.nama, this.jumlahPeluru);

  int tembak(){
    if(jumlahPeluru > 0){
      return jumlahPeluru-=1;
    }else{
      return 0;
    }
  }

  int reload(int n){
    return jumlahPeluru += n;
  }
}

void main(List<String> args) {
  var pistol = Pistol('M7', 7);
  var tembak1 = pistol.tembak();
  var tembak2 = pistol.tembak();
  print(tembak1);
  print(tembak2);
  var reload1 = pistol.reload(2);
  print (reload1);
}