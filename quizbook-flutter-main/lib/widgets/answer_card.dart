import 'package:flutter/material.dart';
import 'package:rudra_it_hub/utils/constants.dart';

class AnswerCard extends StatelessWidget {
  const AnswerCard({
    super.key,
    required this.option,
    required this.isSelected,
    required this.currentIndex,
    required this.correctAnswerIndex,
    required this.selectedAnswerIndex,
  });

  final String option;
  final bool isSelected;
  final int? correctAnswerIndex;
  final int? selectedAnswerIndex;
  final int currentIndex;


  @override
  Widget build(BuildContext context) {
    double screenHeight = getScreenHeight(context);
    bool isCorrectAnswer = (currentIndex == correctAnswerIndex);
    bool isWrongAnswer = !isCorrectAnswer && isSelected;
    return selectedAnswerIndex != null ? Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: BorderSide(
            color: isCorrectAnswer ? Colors.green : isWrongAnswer ? Colors.red : Colors.white,
            width: 1.0), // Set border color and width
      ),
      color: isCorrectAnswer ? Colors.green[100] : isWrongAnswer ? Colors.red[100] : Colors.white,
      child: ListTile(
        title: Text(
          option,
          style:  TextStyle(fontSize: screenHeight * 0.025),
        ),
      ),
    )

    
        : Card(
      color: Colors.white,
      child: ListTile(
        title: Text(
          option,
          style:  TextStyle(fontSize: screenHeight * 0.025),
        ),
        // onTap: (){
        //   print('tap');
        // },
      ),
    );
  }
}



