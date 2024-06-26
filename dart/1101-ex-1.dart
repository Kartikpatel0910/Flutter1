void main() {
  var obj = B();
  obj.Display_b();
  obj.Display_a();
}

class A {
  int a = 999;
  void Display_a() {
    print(a);
  }
}

class B extends A {
  int b = 898;
  void Display_b() {
    print(b);
  }
}