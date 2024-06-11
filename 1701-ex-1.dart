void main() {
  var obj = car();
  obj.Electric();
  obj.Petrol();
}

class car with electric, petrol {}

mixin electric {
  Electric() {
    print("This is Electric veriant");
  }
}
mixin petrol {
  Petrol() {
    print("This is Petrol veriant");
  }
}
