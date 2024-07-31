import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

double getScreenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double getScreenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}



const String bimg = 'assets/bg.png';
const String noData = 'assets/no_data.svg';
const String logo = 'assets/logo.png';
const String pickimg = 'assets/add_pic_icon.png';
const String trophyImage = 'assets/trophy.png';
const String quizBook = 'assets/quiz_book.png';
const String placeHolder = 'assets/place_holder.jpg';
const String numimg = 'assets/normal_number_bg.png';
const String timg = 'assets/time_icon.png';
const String qcion = 'assets/question_icon.png';

//common colors
const Color greyColor = Colors.grey;
const Color feedbackEmojiColor = Color(0xFFe9dcff);

const Color white = Colors.white;
const Color purple = Color(0xFF6c33d1);
const Color falseAns = Color(0xFFffc4c4);
const Color trueAns = Color(0xFFc8ffe3);
const Color resultTrue = Color(0xFF2BBE73);
const Color resultFalse = Color(0xFFC43131);
const Color black = Colors.black;
const Color red = Colors.red;
const Color blue = Colors.blue;

final mobileNumberFormat = FilteringTextInputFormatter.allow(RegExp('[0-9]'));

final LengthLimitingTextInputFormatter mobileLengthFormatter =
LengthLimitingTextInputFormatter(10);

final LengthLimitingTextInputFormatter otpFormatter =
LengthLimitingTextInputFormatter(6);


//  class Constants{
//   static const String baseUrl = 'https://quizbook-api.rudraithub.com';
//  }