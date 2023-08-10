void outerFunction() {
  print("This is the outer function.");


  int innerFunction(int a, int b) {
   return a+b;

  }

  int c = innerFunction(1,2); // Calling the inner function
  print(c);
}

void main() {
  outerFunction();
  print(sum(100,200));
  hello(b:12,x:'Absar');
}


// Optional parameter should always be in last and if no value of c
// is passed it will automatically put 10 in it

dynamic sum( int a, int b , [ int c = 10 ]){
  return a+b+c;

}

// As its a required parameter , argument should be pass with parameter name
// here arguments order dont matter
// just took the required keyword off and put a value it will act like optional parameter
void hello({required String x, required int b, int c = 90}){
  print("Shakib $x is in $b");
}