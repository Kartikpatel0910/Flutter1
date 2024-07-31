import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_book_apk/utils/constant.dart';
import 'package:quiz_book_apk/view/congratulation_screen.dart';
import 'package:quiz_book_apk/widgets/common_button.dart';
import 'package:quiz_book_apk/widgets/common_quesbtn.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  String selectedOption = '';
  void _handleOptionTap(String option) {
    setState(() {
      selectedOption = option;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              height: 200,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: purple,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(40))),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Maths\nWhat is the smallest prime\n number?",
                      style: TextStyle(
                          color: white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(10),
              children: [
                OptionTile(
                  option: 'A',
                  answer: '0',
                  color: selectedOption == 'A' ? Colors.blue[100] : Colors.white,
                  onTap: () => _handleOptionTap('A'),
                ),
                OptionTile(
                  option: 'B',
                  answer: '1',
                  color: selectedOption == 'B'
                      ? Colors.blue[100]
                      : Colors.red[100],
                  onTap: () => _handleOptionTap('B'),
                ),
                OptionTile(
                  option: 'C',
                  answer: '2',
                  color: selectedOption == 'C'
                      ? Colors.blue[100]
                      : Colors.green[100],
                  onTap: () => _handleOptionTap('C'),
                ),
                OptionTile(
                  option: 'D',
                  answer: '3',
                  color:
                      selectedOption == 'D' ? Colors.blue[100] : Colors.white,
                  onTap: () => _handleOptionTap('D'),
                ),
              ],
            ),
          ),
          custom_button(
            onpress: () {
            Get.to(()=>CongPage());
          }, title: 'Next', 
          isfullwidth: true)
        ],
      ),
    );
  }
}
