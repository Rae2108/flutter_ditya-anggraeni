class Hewan{
    double berat;
    Hewan(this.berat);
}

class Mobil {
    List<Hewan> muatan = [];
    double kapasitas;
    Mobil(this.kapasitas);

    double newKapasitas(hewanMasuk){
      kapasitas = kapasitas - hewanMasuk;
      return kapasitas;
    }

    bool tambahMuatan(Hewan muatanBaru){
      if (muatanBaru.berat <= kapasitas){
        newKapasitas(muatanBaru.berat);
        muatan.add(muatanBaru);
        return true;
      }else{
        return false;
      }
      
    }

    int getTotalMuatan(){
      return muatan.length;
    }

    double sisaKapasitas(){
      return kapasitas;
    }
}

void main(){
    var mobil = Mobil(25);
    var hewan1 = Hewan(10);
    var hewan2 = Hewan(10);
    var hewan3 = Hewan(5);

    print('Menambahkan hewan 1 dengan berat : ${hewan1.berat}, ' + mobil.tambahMuatan(hewan1).toString());
    print('Total muatan sekarang : ${mobil.getTotalMuatan()}');
    print('Sisa kapasitas mobil : ${mobil.sisaKapasitas()}');
    print('');

    print('Menambahkan hewan 1 dengan berat : ${hewan2.berat}, ' + mobil.tambahMuatan(hewan2).toString());
    print('Total muatan sekarang : ${mobil.getTotalMuatan()}');
    print('Sisa kapasitas mobil : ${mobil.sisaKapasitas()}');
    print('');

    print('Menambahkan hewan 1 dengan berat : ${hewan3.berat}, ' + mobil.tambahMuatan(hewan3).toString());
    print('Total muatan sekarang : ${mobil.getTotalMuatan()}');
    print('Sisa kapasitas mobil : ${mobil.sisaKapasitas()}');
    print('');
}