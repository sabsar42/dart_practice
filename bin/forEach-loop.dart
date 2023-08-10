import 'dart:ffi';

void main() {
 // List<int> l = [1, 2, 3];
  Set<int> l ={1,23,4};

  //1st way
  l.forEach((element) {
    print(element);
  });

  // 2nd way
  for (int e in l) {
    print(e);
  }

}
