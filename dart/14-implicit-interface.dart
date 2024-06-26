// 1401 Pro

void main() {
  var obj = B();
  obj.display1();
  obj.display2();
  obj.display3();
}

class A {
  void display1() {
    print("class A first method");
  }

  void display2() {
    print("class A Second method");
  }
}

class C {
  void display3() {
    print("class C first method");
  }
}

class B implements A, C {
  void display1() {
    print("After implementation class A first method");
  }

  void display2() {
    print("After implementation class A Second method");
  }

  void display3() {
    print("After implementation class C Second method");
  }
}
