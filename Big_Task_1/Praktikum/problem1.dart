import 'dart:io';

fungsi (int a){
  if( a%2 == 0){
    return true;
  }else{
    return false;
  }
}


void main(List<String> args) {
    stdout.write('Masukan angka : ');
    int a = int.parse(stdin.readLineSync()!);
    bool b = fungsi(a);
    print (b);
}