import 'dart:io';
void main(){
   stdout.write ('Masukan ukuran : ');
  int i = int.parse(stdin.readLineSync()!);
  
  for(int a = i; a > 0; a--){
    for(int b = 0; b < a; b++){
      stdout.write('* ');
    }
    print('');
  }
}