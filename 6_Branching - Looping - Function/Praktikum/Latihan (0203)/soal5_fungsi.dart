import 'dart:io';

penjumlahan(double x, double y){
  print ('Penjumlahan');
  print ('Hasil dari $x + $y = ${x+y}');
}

pengurangan(double x, double y){
  print ('Pengurangan');
  print ('Hasil dari $x - $y = ${x-y}');
}

perkalian(double x, double y){
  print ('Perkalian');
  print ('Hasil dari $x * $y = ${x*y}');
}

pembagian(double x, double y){
  print ('Pembagian');
  print ('Hasil dari $x / $y = ${x/y}');
}
void main(List<String> args) {
  bool ulang = false;
  stdout.write ('Angka 1 : ');
  double x = double.parse(stdin.readLineSync()!);
  stdout.write ('Angka 2 : ');
  double y = double.parse(stdin.readLineSync()!);

  do{
    print ('Menu : ');
    print ('1. Penjumlahan');
    print ('2. Pengurangan');
    print ('3. Perkalian');
    print ('4. Pembagian');
    stdout.write ('Pilih Menu : ');
    int pil = int.parse(stdin.readLineSync()!);

    switch(pil){
      case 1: 
        penjumlahan(x, y);
        break;
      case 2: 
        pengurangan(x, y);
        break;
      case 3: 
        perkalian(x, y);
        break;
      case 4: 
        pembagian(x, y);
        break;
      case 5:
        print ('Exit program...');
        break;
      default:
        print ('Tidak ada didalam menu!');
        break;
    }

    stdout.write ('Program selesai, apakah ingin mengulanginya lagi? (Y/N) :');
    String u = stdin.readLineSync()!;

    if(u == 'Y' || u == 'y'){
      ulang = true;
    }else if(u == 'N' || u == 'n'){
      ulang = false;
    }else{
      print('Inputan salah, program akan berhenti!');
      ulang = false;
    }

  }while(ulang);
}