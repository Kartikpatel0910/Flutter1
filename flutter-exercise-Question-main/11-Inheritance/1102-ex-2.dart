void main() {
  var obj = B();
  obj.Display_b();
  obj.Display_a();
}

class A {
  String a = 'riya';
  void Display_a() {
    print(a);
  }
}

class B extends A {
  String b = 'Jinal';
  void Display_b() {
    print(b);
  }
}