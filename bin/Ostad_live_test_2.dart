void main() {

  List<double> list = [12.99, 8.75, 21.50, 5.00];
  double tax = 0.08;
  double tc = 0;
  for (var pc in list) {
    tc += pc;
  }
  double sum = tc + (tc * tax);
  String totalSum = sum.toStringAsFixed(2);
  print("Total Cost: " + totalSum);
}
