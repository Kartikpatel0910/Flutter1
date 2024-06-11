// quiz_view.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rudra_it_hub/model/history_model_data.dart';
import 'package:rudra_it_hub/model/quiz_model.dart';
import 'package:rudra_it_hub/utils/constants.dart';
import 'package:rudra_it_hub/widgets/common_card.dart';
import '../../controller/history_controller.dart';

class HistoryDetail extends StatelessWidget {
  final HistoryController controller = Get.put(HistoryController());

  HistoryDetail({super.key, required this.chapterHistory});
  final ChapterHistory chapterHistory;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Results'),
      ),
      body: ListView.builder(
        itemCount: chapterHistory.questions.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Column(
              children: [
                _buildPurpleCard(context, screenWidth, screenHeight),
                _buildQuestionCard(
                    context,
                    screenWidth,
                    chapterHistory.questions[index].questionName,
                    chapterHistory.questions[index].option,
                    chapterHistory.questions[index]
                        .option[chapterHistory.questions[index].rightAnswer],
                    chapterHistory.questions[index].rightAnswer,
                    screenHeight,
                    chapterHistory.questions[index]
                        .option[chapterHistory.questions[index].userAns])
              ],
            );
          } else {
            return Padding(
                padding: EdgeInsets.symmetric(
                  vertical: screenHeight * 0.015,
                ),
                child: _buildQuestionCard(
                    context,
                    screenWidth,
                    chapterHistory.questions[index].questionName,
                    chapterHistory.questions[index].option,
                    chapterHistory.questions[index]
                        .option[chapterHistory.questions[index].rightAnswer],
                    chapterHistory.questions[index].rightAnswer,
                    screenHeight,
                    chapterHistory.questions[index]
                        .option[chapterHistory.questions[index].userAns]));
          }
        },
      ),
    );
  }

  Widget _buildPurpleCard(
      BuildContext context, double screenWidth, double screenHeight) {
    return Card(
      margin: EdgeInsets.all(screenWidth * 0.01),
      child: Container(
        padding: EdgeInsets.all(
            screenHeight * 0.01), // Adjusted based on screenHeight
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildResultCard(
                'Total Qusetion',
                chapterHistory.totalQuestions.toString(),
                screenWidth,
                screenHeight),
            _buildResultCard(
                'Right Answer',
                chapterHistory.totalRightQuestions.toString(),
                screenWidth,
                screenHeight),
            _buildResultCard(
                'Wrong Answer',
                chapterHistory.totalWrongQuestions.toString(),
                screenWidth,
                screenHeight)
          ],
        ),
      ),
    );
  }

  Widget _buildResultCard(
      String title, String value, double screenWidth, double screenHeight) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(screenWidth * 0.02),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: screenWidth * 0.036,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              value,
              style:
                  TextStyle(fontSize: screenWidth * 0.036, color: Colors.black),
            ),
            SizedBox(height: screenWidth * 0.02),
          ],
        ),
      ),
    );
  }

  Widget _buildQuestionCard(
    BuildContext context,
    double screenWidth,
    String question,
    List<String> options,
    String correctAnswer,
    int correctAnswerIndex,
    double screenHeight,
    String userAnswer,
  ) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(screenWidth * 0.02),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(screenWidth * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  question,
                  style: TextStyle(
                    fontSize: screenHeight * 0.028,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: screenHeight * 0.01),
                //  String letter = String.fromCharCode(65 + index);
                HsAnswerCard(
                  option: "${String.fromCharCode(65 + 0)} : ${options[0]}",
                  isTrue: 0 == correctAnswerIndex,
                ),
                HsAnswerCard(
                  option: "${String.fromCharCode(65 + 1)} : ${options[1]}",
                  isTrue: 1 == correctAnswerIndex,
                ),
                HsAnswerCard(
                  option: "${String.fromCharCode(65 + 2)} : ${options[2]}",
                  isTrue: 2 == correctAnswerIndex,
                ),
                HsAnswerCard(
                  option: "${String.fromCharCode(65 + 3)} : ${options[3]}",
                  isTrue: 3 == correctAnswerIndex,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "User Answer : $userAnswer",
                style: TextStyle(
                  color: purpleColor,
                  fontSize: screenHeight * 0.0220,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
