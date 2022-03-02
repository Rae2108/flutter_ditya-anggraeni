import 'dart:io';

void main(List<String> args) {
  stdout.write('Masukkan nilai :');
  double nilai = double.parse(stdin.readLineSync()!);
  String grade;

  if(nilai > 85){
    grade = 'A';
  }else if(nilai > 75){
    grade = 'B';
  }else if(nilai > 60){
    grade = 'C';
  }else if(nilai > 45){
    grade = 'D';
  }else{
    grade = 'E';
  }

  print (grade);
}