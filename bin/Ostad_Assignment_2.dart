void main() {

  List<int> list = [85, 92, 78, 65, 88, 72];
  int len = list.length;

  int sum = 0;
  for (var i in list) {
    sum += i;
  }

  double avgGrade = sum / len;
  int roundedAvg = avgGrade.round(); // to round it to the nearest integer

  print("Student's average grade: $avgGrade");
  print("Rounded average: $roundedAvg");

  if (avgGrade >= 70) {
    print('Passed');
  } else {
    print('Failed');
  }
}
