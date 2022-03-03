class matematika{
  int ? x;
  int ? y;
    hasil(){
      print ('$x $y');
    }
}

class kpk extends matematika{
  @override
  hasil(){
    int x = 10;
    int y = 20;
    print ('$x $y');
  }
}

class fpb extends matematika{
  @override
  hasil(){
    int x = 30;
    int y = 40;
    print ('$x $y');
  }
}

void main(){
  var kpkk = kpk().hasil();
  var fpbb = fpb().hasil();
}