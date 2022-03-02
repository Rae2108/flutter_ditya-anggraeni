  import 'dart:io';

void main(List<String> args) {
  stdout.write('masukkan total :');
  int pil = int.parse(stdin.readLineSync()!);

  switch(pil){
   case 1 : 
      print ("Senin");
   break;
   case 2 : 
      print ("Selasa");
   break;
   case 3 : 
      print ("Rabu");
   break;
   case 4 : 
      print ("Kamis");
   break;
   case 5 : 
      print ("Jum'at");
   break;
   case 6 : 
      print ("Sabtu");
   break;
   case 7 : 
      print ("minggu");
   break; 
  default :
      print ("Tidak ada hari ke $pil");
  }
}