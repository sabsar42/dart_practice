mixin mis {
  void show(String s, int a) {
    print("this is: $s and that is $a");
  }
}

class Tree {
  String s = "Bob";
  int a = 12;
  Tree(this.s, this.a) {
    print(a);
    print(s);
  }
}

class Branch extends Tree with mis {
  String s = "alan";
  int a = 11121;

  Branch(String s, int a) : super(s, a);
  void display() {
    show(s, a);
  }
}

void main() {
  Branch br = new Branch('sakib',0012);
  br.display();
}
