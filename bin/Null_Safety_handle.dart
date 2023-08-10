 main(){


  // can be null or not null
  int? a;
  int b = 22;


  // if a is null that make it 121
  int c =(a ?? 121) + b ;

  // Force Unrap - a should not be null;

  if(a==null) {
    print(a);
    a=99;
    int h = a!*10;
    print(h);

  }



}