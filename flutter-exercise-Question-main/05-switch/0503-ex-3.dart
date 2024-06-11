void main() {
  int a = 20;
  if (a % 2 == 0) {
    a = 0;
  } else {
    a = 1;
  }
  switch (a) {
    case 0:
      print("number is Even");
      break;
    case 1:
      print("number is Odd");
      break;

    default:
      print("number is Zero ");
      break;
  }
}