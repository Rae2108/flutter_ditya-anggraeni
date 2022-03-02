fungsi(a){
  double b = 1;
  for(int i = 1; i <= a; i++){
    b = b * i; 
  }
  return (b);
}

void main(List<String> arguments) {
 print(fungsi(10));
 print(fungsi(20));
 print(fungsi(30));
}
