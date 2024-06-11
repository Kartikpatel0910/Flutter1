
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

double getScreenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double getScreenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}



const String bgImage = 'assets/images/bg.png';
const String noData = 'assets/images/no_data.svg';
const String imgLogo = 'assets/images/logo.png';
const String changeProfile = 'assets/images/add_pic_icon.png';
const String trophyImage = 'assets/images/trophy.png';
const String quizBook = 'assets/images/quiz_book.png';
const String placeHolder = 'assets/images/place_holder.jpg';
//common colors
const Color greyColor = Colors.grey;
const Color feedbackEmojiColor = Color(0xFFe9dcff);
const Color whiteColor = Colors.white;
const Color purpleColor = Color(0xFF6c33d1);
const Color falseAnsColor = Color(0xFFffc4c4);
const Color trueAnsColor = Color(0xFFc8ffe3);
const Color resultTrueColor = Color(0xFF2BBE73);
const Color resultFalseColor = Color(0xFFC43131);
const Color blackColor = Colors.black;
const Color redColor = Colors.red;

final mobileNumberFormat = FilteringTextInputFormatter.allow(RegExp('[0-9]'));

final LengthLimitingTextInputFormatter mobileLengthFormatter =
LengthLimitingTextInputFormatter(10);

final LengthLimitingTextInputFormatter otpFormatter =
LengthLimitingTextInputFormatter(6);

