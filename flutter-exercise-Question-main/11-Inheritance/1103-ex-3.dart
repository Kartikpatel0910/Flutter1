void main() {
  var obj = C();
  obj.Display_b();
  obj.Display_a();
  obj.Display_c();
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

class C extends B {
  String c = 'Anjali';
  void Display_c() {
    print(c);
  }
}