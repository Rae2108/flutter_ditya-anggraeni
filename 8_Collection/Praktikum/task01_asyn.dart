Future<void> duaparam (a, b) async{
  var listlama = a;
  var listbaru = [];
  for(var list in listlama){
    listbaru.add(list*b);
  }

  print(listbaru);
}

void main() async {
  var a = [10, 20, 30, 40, 50];
  int b = 5;
  await duaparam(a, b);
}