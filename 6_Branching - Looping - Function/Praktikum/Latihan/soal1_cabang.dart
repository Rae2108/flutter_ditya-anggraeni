import 'dart:io';

void main(List<String> args) {
  stdout.write('masukkan total :');
  double total = double.parse(stdin.readLineSync()!);

  if(total > 100000){
    total = total - (total * 0.1);
  }

  double bayar = total;
  print('tampilkan bayar : $bayar');
}