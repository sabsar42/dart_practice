import 'dart:io';

void main() {
  String? s = stdin.readLineSync();
  int num = int.parse(s!);
  if (num % 2 == 0) {
    print('$num is an even number');
  } else {
    print('$num is an odd number');
  }
}
