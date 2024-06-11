void main() {
  int a = 18;
  int b = 3;
  int c = 0;
  int d = 0;

  d = a + b;
  print("Addition= $d");
  c = a - b;
  print("Subtraction= $c");
  c = a * b;
  print("Multiplication= $c");
  c = a ~/ b;
  print("Division= $c");

  if (d % 2 == 0) {
    print(" The Addition Number is Even");
  } else {
    print("The Number Is Odd");
  }
}