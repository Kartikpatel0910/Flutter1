void main() {
  var obj = new parent();
  var aobj = new child();
  obj.Display_a();
  aobj.Display_a();
}

class parent {
  void Display_a() {
    print("Tiger");
  }
}

class child extends parent {
  void Display_a() {
    print("Lion");
  }
}