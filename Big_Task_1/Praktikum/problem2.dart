import 'dart:io';

fungsi (int a){
  int b;
  if(a > 180){
    b = a-180;
    if(b <= 0 || b >=360){
      return 0;
    }else{
      return b;
    }
  }else if(a < 180){
    b = a+180;
    if(b <= 0 || b >=360){
      return 0;
    }else{
      return b;
    }
  }else{
    return 0;
  }
}


void main(List<String> args) {
    stdout.write('Masukan angka : ');
    int a = int.parse(stdin.readLineSync()!);
    int b = fungsi(a);
    print (b);
}