// 501 Pro
// void main() {
//   int a = 0;
//   if (a > 0) {
//     a = 1;
//   } else if (a < 0) {
//     a = 0;
//   } else {
//     a = 2;
//   }
//   switch (a) {
//     case 1:
//       print("number is positive");
//       break;
//     case 0:
//       print("number is Nagetive");
//       break;

//     default:
//       print("number is Zero ");
//       break;
//   }
// }

// 502 Pro

// void main() {
//   int a = 80;
//   int b = 20;
//   if (a > b) {
//     a = 0;
//   } else {
//     a = 1;
//   }

//   switch (a) {
//     case 0:
//       print("Maximum Number is A");
//       break;
//     default:
//       print("Maximum Number is B ");
//       break;
//   }
// }

// 503 Pro

// void main() {
//   int a = 20;
//   if (a % 2 == 0) {
//     a = 0;
//   } else {
//     a = 1;
//   }
//   switch (a) {
//     case 0:
//       print("number is Even");
//       break;
//     case 1:
//       print("number is Odd");
//       break;

//     default:
//       print("number is Zero ");
//       break;
//   }
// }

// 504 Pro

void main() {
  print('enter a number from 1 to 7');
  
  int day=6;

  switch (day) {
    case 1:
      print('Sunday');
      break;

    case 2:
      print('Monday');
      break;

    case 3:
      print('Tuesday');
      break;

    case 4:
      print('Wednesday');
      break;
    case 5:
      print('Thursday');
      break;

    case 6:
      print('Friday');
      break;
    case 7:
      print('Saturday');
      break;
    default:
      print(' invalid entry');
  }
}