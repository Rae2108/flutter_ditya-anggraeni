void main() async {
  //Membuat list
  var a = [10, 20]; //list 1
  var b = [5, 15]; //list 2
  var c = [a, b]; //list 3 yang isinya list 1 dan 2
  var f = {}; //delarasi Map
  var i = 0; //variabel untuk menentukan key dari map
  for(var d in c){ //loop list c untuk mengambil list a dan b
    for(var e in d){ //loop list a dan b (isi dari list c)
      f['$i'] = '$e'; //masukan isi dari list c yaitu list a dan b kedalam map dengan i sebagai keynya
      i++; //key bertambah setiap perulangan sebanyak 1
    }
  }
  print (f); //cetak isi dari map
  print (f['0']);
  print (a);
  print (b);
  print (c);
}