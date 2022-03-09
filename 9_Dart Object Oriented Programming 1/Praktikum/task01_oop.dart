
class hewan { //class hewan
  var macan = 70; //attribut
  var kucing = 5; //attribut
  var singa = 80; //attribut
  var kuda = 75; //attribut
}

class mobil { //class mobil
  var a = hewan(); //attribut
  var kapasitas = 200; //attribut
  var berat = 0; //attribut
    void tambahMuatan(){ //method tambah muatan
      var muatan = []; //muatan sekarang (Array)
      var hewantersedia = [a.kucing, a.macan, a.kuda, a.singa]; //muatan tersedia

        for(var b in hewantersedia){ //muatantersedia di loop
          berat = berat + b; //tambahkan berat hewan
          if(berat > kapasitas){ //bandingkan berat hewan dengan kapasitas
            berat = berat - b; //jika lebih besar, batalkan memasukan hewan tersebut
          }else{
            muatan.add(b); //jika masih muat, maka tambahkan hewan tersebut kedalam muatan sekarang
          }
        }
      print(muatan);
      print(berat);
    }
}

void main() {
  var b = mobil();
  b.tambahMuatan();
}