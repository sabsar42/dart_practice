void main() {
  String s = 'ShakibAbsar';
  subsequence(s);
}

void subsequence(String s, {dynamic current = ' ', int index = 0}) {
  if (index == s.length) {
    if (current.length > 0) {
      print(current);
      return;
    }
  }
  else {


    subsequence(s, current: current + s[index], index: index + 1);
    subsequence(s, current: current, index: index + 1);
  }

}
