void main() {
  int a = 0;
  if (a > 0) {
    a = 1;
  } else if (a < 0) {
    a = 0;
  } else {
    a = 2;
  }
  switch (a) {
    case 1:
      print("number is positive");
      break;
    case 0:
      print("number is Nagetive");
      break;
  
    default:
      print("number is Zero ");
      break;
  }
}