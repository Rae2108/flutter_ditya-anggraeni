import 'dart:io';
void main() {
  stdout.write ('Masukan nomor perulangan : ');
  int i = int.parse(stdin.readLineSync()!);

  for(int a = 1; a <= 7; a++){
    if(i == 1){
      print('Senin');
      break;
    }else if(i == 2){
      print('Selasa');
      break;
    }else if(i == 3){
      print('Rabu');
      break;
    }else if(i == 4){
      print('Kamis');
      break;
    }else if(i == 5){
      print("Jum'at");
      break;
    }else if(i == 6){
      print('Sabtu');
      break;
    }else if(i == 7){
      print('Minggu');
      break;
    }else{
      print("Tidak ada hari ke-$i");
      break;
    }
  }
  
}