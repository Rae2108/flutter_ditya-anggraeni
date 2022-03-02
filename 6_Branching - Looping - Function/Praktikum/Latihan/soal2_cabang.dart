import 'dart:io';

void main(List<String> args) {
  stdout.write('Masukkan nilai :');
  double nilai = double.parse(stdin.readLineSync()!);
  String ket;

  if(nilai > 70){
    ket = 'Berhasil';
  }else{
    ket = 'Gagal';
  }

  print (ket);
}