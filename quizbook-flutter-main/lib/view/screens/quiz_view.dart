// // ignore_for_file: unused_local_variable, file_names

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:rudra_it_hub/view/screens/congratulation_view.dart';
// import 'package:rudra_it_hub/view/widgets/answer_card.dart';
// import 'package:rudra_it_hub/view/widgets/common_button.dart';

// import '../../controller/quiz_controller.dart';
// import '../../utils/constants.dart';
// import '../widgets/common_snack_bar.dart';

// // import '/screens/result_screen.dart';

// class QuizScreen1 extends StatefulWidget {
//   const QuizScreen1({super.key, required this.stdId , required this.subId , required this.chapterId});
//   final int stdId;
//   final int subId;
//   final int chapterId;


//   @override
//   State<QuizScreen1> createState() => _QuizScreen1State();
// }

// class _QuizScreen1State extends State<QuizScreen1> {
//   int? selectedAnswerIndex;
//   int questionIndex = 0;
//   int score = 0;
//   final QuestionController _questionController = QuestionController();
//   @override
//   void initState() {
//     getQuestionList(widget.chapterId, widget.subId,widget.stdId, context);
//     setState(() {

//     });
//     super.initState();
//   }

//   void pickAnswer(int value) {
//     selectedAnswerIndex = value;

//     final question = _questionController.questions[questionIndex];
//     if (selectedAnswerIndex == question.trueAnswer) {
//       score++;
//     }
//     setState(() {});
//   }

//   void goToNextQuestion() {
//     // print(_questionController.currentQuestionIndex.value.toString());
//     _questionController.moveToNextQuestion();
//   }

//   @override
//   Widget build(BuildContext context) {
//     double screenHeight = getScreenHeight(context);
//     double screenWidth = getScreenWidth(context);

//     // final question = _questionController.questions[questionIndex];
//     bool isLastQuestion = questionIndex == _questionController.questions2.length ;
//     return Scaffold(
//       appBar: AppBar(
//         // leading: null,
//         automaticallyImplyLeading: false,
//         backgroundColor: purpleColor,
//         centerTitle: true,
//         elevation: 0,
//         title: Obx(
//           () => Column(
//             children: [
//               Obx(() =>
//           // Marquee
//               Text(
//                          _questionController
//                             .questions2[questionIndex].question,
//                         style: TextStyle(
//                             color: whiteColor, fontSize: screenHeight * 0.030),
//                       )
//                   //         Text(
//                   //   _questionController.questions[questionIndex].question,
//                   //   style:  TextStyle(color: whiteColor ,fontSize: screenHeight * 0.030),
//                   // ),
//                   ),
//               Text(
//                 'Question ${_questionController.currentQuestionIndex.value}/${_questionController.questions.length}',
//                 style: TextStyle(
//                     fontSize: screenHeight * 0.015, color: whiteColor),
//               )
//             ],
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: Column(
//           // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             // Text(
//             //   question.question,
//             //   style: const TextStyle(
//             //     fontSize: 21,
//             //   ),
//             //   textAlign: TextAlign.center,
//             // ),
//             Obx(
//               () => ListView.builder(
//                 shrinkWrap: true,
//                 // itemCount: _questionController.questions[questionIndex].options.length,
//                 itemCount: _questionController.apiQuestions?.value.data?.length ?? 0,
//                 itemBuilder: (context, index) {
//                   return Padding(
//                     padding: const EdgeInsets.only(top: 5),
//                     child: InkWell(
//                       onTap: selectedAnswerIndex == null
//                           ? () => pickAnswer(index)
//                           : null,
//                       child: Obx(
//                         () => AnswerCard(
//                           currentIndex: index,
//                           question: _questionController.apiQuestions!.value.data?[index].question ?? '',
//                           isSelected: selectedAnswerIndex == index,
//                           selectedAnswerIndex: selectedAnswerIndex,
//                           correctAnswerIndex: _questionController.apiQuestions!.value.data?[index].rightAns,
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),

//             const Spacer(),

//             isLastQuestion
//                 ? CommonButton(
//                     onPress: () {
//                       if (selectedAnswerIndex != null) {

//                         Navigator.of(context).pushReplacement(
//                           MaterialPageRoute(
//                             builder: (_) => CongratulationScreen(
//                               noOfTrueAns: score,
//                               totalQuestion:
//                                   _questionController.questions.length,
//                             ),
//                           ),
//                         );
//                       } else {
//                         commonSnackBar(context: context, msg: "Please select question");
//                       }
//                     },
//                     title: 'Finish',
//                   )
//                 : CommonButton(
//                     onPress: () {
//                       if (selectedAnswerIndex != null) {
//                         _questionController.currentQuestionIndex += 1;
//                         questionIndex = questionIndex + 1;
//                         selectedAnswerIndex = null;
//                         goToNextQuestion;
//                       } else {
//                         commonSnackBar(context: context, msg: "Please select question");
//                       }
//                       //  selectedAnswerIndex != null ? goToNextQuestion  : null;
//                       // void goToNextQuestion() {
//                       //   print('call');

//                       //   // setState(() {

//                       //   // });
//                       // }

//                       setState(() {});
//                     },
//                     title: 'Next',
//                   ),
//             SizedBox(
//               height: screenHeight * 0.051,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
