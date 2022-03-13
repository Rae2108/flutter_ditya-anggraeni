class Matematika{
    hasil(){
      return 0;
    }
}

class KPK extends Matematika{
  int x;
  int y;
  KPK(this.x, this.y);
}

class FPB extends Matematika{
  int x;
  int y;
  FPB(this.x, this.y);
}

void main(){
  var kpk = KPK(10, 10);
  var fpb = FPB(20, 20);
  print (kpk);
  print (fpb);
}