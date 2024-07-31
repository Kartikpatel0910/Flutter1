import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_book_apk/utils/constant.dart';
import 'package:quiz_book_apk/view/login.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    
    super.initState();
    Timer(
      Duration(seconds: 2),
      (){
        Get.offAll(()=> LoginScreen());
        // LoginScreen()
        // );
      }
      );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Center(
        child: Container(
          child: Image.asset(logo),
          ),
      ),
    );

  }
}