class matematika{
    hasil(){
      return 0;
    }
}

class KPK extends matematika{
  int x;
  int y;
  KPK(this.x, this.y);

  @override
  hasil(){
    int i;
 
  if (x > y) {
    i = x;
    x = y;
    y = i;
  }

  for (i = y; i % x != 0 || i % y != 0; i++);
    return i;
  }
}

class FPB extends matematika{
  int x;
  int y;
  FPB(this.x, this.y);

  @override
  hasil(){
    int i;
    if (x > y){
      i = x;
      x = y;
      y = i;
    }

    while (x > 0){
      i = y % x;
      y = x;
      x = i;
    }
    return y;
    }
}

void main(){
  var kpk = KPK(2, 11).hasil();
  var fpb = FPB(3, 13).hasil();

  print(kpk);
  print(fpb);
}