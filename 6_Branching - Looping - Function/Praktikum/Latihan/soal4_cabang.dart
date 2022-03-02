import 'dart:io';

void main(List<String> args) {
  double diskon;
  stdout.write('Member ? (Y/N)');
  String member = stdin.readLineSync()!;
  stdout.write('Masukan total belanja : ');
  int bel = int.parse(stdin.readLineSync()!);

  //if 1
  if(member == 'y' || member == 'Y'){
    //if 2
    if(bel > 500000){
      diskon = 15/100;
    }else if (bel > 100000){
      diskon = 10/100;
    }else{
      diskon = 0;
    } 
  //if 1
  }else{
    //if 2
    if(bel > 100000){
      diskon = 5/100;
    }else{
      diskon = 0;
    }
  }
  print ('Total belanja adalah : ${bel-(bel*diskon)} dengan diskon sebesar ${bel*diskon}');

}