void main() {
  int a = 3;
  int b = 5;
  int c = 0;
  c = a * b;
  if (c % 2 == 0) {
    print(" is Even");
  } else {
    print("The Number is Odd");
  }
  if (c % 4 == 0) {
    print("The number divided by 4");
  } else if (c % 5 == 0) {
    print("The Number divided by 5");
  } else {
    print("The number is can not divided by 4 & 5= $c");
  }
}