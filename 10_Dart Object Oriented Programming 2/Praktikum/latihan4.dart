class Task<T>{
  var a;
  var b;
  Task(this.a, this.b);

  Generic<T>(T a, T b){
    var c = a.runtimeType;
    var d = b.runtimeType;
    if(c == String && d == String){
      print('$a $b');
    }else if(c == int && d == int){
      int a1 = a as int;
      int b1 = b as int;
      if(a1 > b1){
        print(a1);
      }else{
        print(b1);
      }
    }else if(c == double && d == double){
      double a1 = a as double;
      double b1 = b as double;
      if(a1 > b1){
        print(a1);
      }else{
        print(b1);
      }
    }else if(c == bool && d == bool){
      bool a1 = a as bool;
      bool b1 = b as bool;
      print (a1 && b1);
    }else{
      print('Tipe data tidak diketahui');
    }
  }
}

void main(List<String> args) {
  var t1 = Task<String>('main', 'main');
  t1.Generic(t1.a, t1.b);
  var t2 = Task<int>(10, 5);
  t2.Generic(t2.a, t2.b);
  var t3 = Task<double>(10.1 , 5.55);
  t3.Generic(t3.a, t3.b);
  var t4 = Task<bool>(true, false);
  t4.Generic(t4.a, t4.b);
  var t5 = Task<List>(['tes'], ['tes']);
  t5.Generic(t5.a, t5.b);
}