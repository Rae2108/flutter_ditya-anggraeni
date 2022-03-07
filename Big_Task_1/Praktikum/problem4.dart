import 'dart:io';

void dangka(a){
  int i,j,k;
  for(i=1;i<=a;i++){
    for(j=1;j<=i;j++){
      stdout.write(' ');
    }
    print(i);
  }
}

void main(List<String> args) {
  stdout.write('Masukan angka : ');
  int a = int.parse(stdin.readLineSync()!);
  dangka(a);
}