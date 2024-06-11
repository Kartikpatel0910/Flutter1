void main() {
  int a = 80;
  int b = 20;
  if (a > b) {
    a = 0;
  } else {
    a = 1;
  }

  switch (a) {
    case 0:
      print("Maximum Number is A");
      break;
    default:
      print("Maximum Number is B ");
      break;
  }
}