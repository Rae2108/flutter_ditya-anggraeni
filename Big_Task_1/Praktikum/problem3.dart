import 'dart:io';

void jampasir(a){
  int i,j,k;

  //segitiga atas
  for(i = 0; i<=(a-1);i++){
    for(j = 1; j<=i;j++){
      stdout.write(' ');
    }
    for(k = 0;k>=(i-a+1);k--){
      stdout.write('* ');
    }
    print('');
  }

  //segitiga bawah
  for(i = 1; i<a;i++){
    for(j=1;j<a-i;j++){
      stdout.write(' ');
    }
    for(k=0;k<(i+1);k++){
      stdout.write('* ');
    }
    print('');
  }
}

void main(List<String> args) {
  stdout.write('Masukan angka : ');
  int a = int.parse(stdin.readLineSync()!);
  jampasir(a);
}