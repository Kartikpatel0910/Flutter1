import 'dart:convert';

class QuizModel {
  final int totalQuestions = 5;
  final int rightAnswers = 2;
  final int wrongAnswers = 3;

  final List<String> questions = [
    'Lassi paratha and mixed vegetables are staple food of which states?',
    'Another question goes here.',
    'And one more question for variety.',
    'Yet another interesting question.',
    'Last question for the quiz.'
  ];

  final List<List<String>> options = [
    ['A: Gujarat', 'B: Maharashtra', 'C: Rajasthan', 'D: Punjab'],
    ['A: Option A', 'B: Option B', 'C: Option C', 'D: Option D'],
    ['A: abc', 'B: def', 'C: jkl', 'D: xyz'],
    ['A: Apple', 'B: Banana', 'C: Mango', 'D: Orange'],
    ['A: january', 'B: February', 'C: march', 'D: april'],
  ];
}
// // To parse this JSON data, do
// //
// //     final temperatures = temperaturesFromJson(jsonString);
// // To parse this JSON data, do
// //
// //     final temperatures = temperaturesFromJson(jsonString);


// HistoryModel historyFromJson(String str) => HistoryModel.fromJson(json.decode(str));

// String temperaturesToJson(HistoryModel data) => json.encode(data.toJson());

// class HistoryModel {
//     int status;
//     List<ChapterHistory> data;
//     String message;

//     HistoryModel({
//         required this.status,
//         required this.data,
//         required this.message,
//     });

//     factory HistoryModel.fromJson(Map<String, dynamic> json) => HistoryModel(
//         status: json["status"],
//         data: List<ChapterHistory>.from(json["data"].map((x) => ChapterHistory.fromJson(x))),
//         message: json["message"],
//     );

//     Map<String, dynamic> toJson() => {
//         "status": status,
//         "data": List<dynamic>.from(data.map((x) => x.toJson())),
//         "message": message,
//     };
// }

// class ChapterHistory {
//     int stdid;
//     String std;
//     int subId;
//     String subjectName;
//     int chapterId;
//     String chapterName;
//     String teacher;
//     List<Question> questions;
//     DateTime submitTime;
//     int totalQuestions;
//     int totalRightQuestions;
//     int totalWrongQuestions;

//     ChapterHistory({
//         required this.stdid,
//         required this.std,
//         required this.subId,
//         required this.subjectName,
//         required this.chapterId,
//         required this.chapterName,
//         required this.teacher,
//         required this.questions,
//         required this.submitTime,
//         required this.totalQuestions,
//         required this.totalRightQuestions,
//         required this.totalWrongQuestions,
//     });

//     factory ChapterHistory.fromJson(Map<String, dynamic> json) => ChapterHistory(
//         stdid: json["stdid"],
//         std: json["std"],
//         subId: json["subID"],
//         subjectName: json["subjectName"],
//         chapterId: json["chapterID"],
//         chapterName: json["chapterName"],
//         teacher: json["teacher"],
//         questions: List<Question>.from(json["questions"].map((x) => Question.fromJson(x))),
//         submitTime: DateTime.parse(json["submitTime"]),
//         totalQuestions: json["totalQuestions"],
//         totalRightQuestions: json["totalRightQuestions"],
//         totalWrongQuestions: json["totalWrongQuestions"],
//     );

//     Map<String, dynamic> toJson() => {
//         "stdid": stdid,
//         "std": std,
//         "subID": subId,
//         "subjectName": subjectName,
//         "chapterID": chapterId,
//         "chapterName": chapterName,
//         "teacher": teacher,
//         "questions": List<dynamic>.from(questions.map((x) => x.toJson())),
//         "submitTime": submitTime.toIso8601String(),
//         "totalQuestions": totalQuestions,
//         "totalRightQuestions": totalRightQuestions,
//         "totalWrongQuestions": totalWrongQuestions,
//     };
// }

// class Question {
//     int questionid;
//     String questionName;
//     List<String> option;
//     int rightAnswer;
//     int userAns;
//     bool userResult;

//     Question({
//         required this.questionid,
//         required this.questionName,
//         required this.option,
//         required this.rightAnswer,
//         required this.userAns,
//         required this.userResult,
//     });

//     factory Question.fromJson(Map<String, dynamic> json) => Question(
//         questionid: json["questionid"],
//         questionName: json["questionName"],
//         option: List<String>.from(json["option"].map((x) => x)),
//         rightAnswer: json["rightAnswer"],
//         userAns: json["user_Ans"],
//         userResult: json["user_Result"],
//     );

//     Map<String, dynamic> toJson() => {
//         "questionid": questionid,
//         "questionName": questionName,
//         "option": List<dynamic>.from(option.map((x) => x)),
//         "rightAnswer": rightAnswer,
//         "user_Ans": userAns,
//         "user_Result": userResult,
//     };
// }
// To parse this JSON data, do
//
//     final historyModel = historyModelFromJson(jsonString);

// To parse this JSON data, do
//
//     final historyModel = historyModelFromJson(jsonString);


HistoryModel historyModelFromJson(String str) => HistoryModel.fromJson(json.decode(str));

String historyModelToJson(HistoryModel data) => json.encode(data.toJson());

class HistoryModel {
    int status;
    List<ChapterHistory> data;
    String message;

    HistoryModel({
        required this.status,
        required this.data,
        required this.message,
    });

    factory HistoryModel.fromJson(Map<String, dynamic> json) => HistoryModel(
        status: json["status"],
        data: List<ChapterHistory>.from(json["data"].map((x) => ChapterHistory.fromJson(x))),
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "message": message,
    };
}

class ChapterHistory {
    int stdid;
    String std;
    int subId;
    String subjectName;
    int chapterId;
    int chapterNo;
    String chapterName;
    String teacher;
    List<Question> questions;
    DateTime submitTime;
    int totalQuestions;
    int totalRightQuestions;
    int totalWrongQuestions;

    ChapterHistory({
        required this.stdid,
        required this.std,
        required this.subId,
        required this.subjectName,
        required this.chapterId,
        required this.chapterNo,
        required this.chapterName,
        required this.teacher,
        required this.questions,
        required this.submitTime,
        required this.totalQuestions,
        required this.totalRightQuestions,
        required this.totalWrongQuestions,
    });

    factory ChapterHistory.fromJson(Map<String, dynamic> json) => ChapterHistory(
        stdid: json["stdid"],
        std: json["std"],
        subId: json["subID"],
        subjectName: json["subjectName"],
        chapterId: json["chapterID"],
        chapterNo: json["chapterNO"],
        chapterName: json["chapterName"],
        teacher: json["teacher"],
        questions: List<Question>.from(json["questions"].map((x) => Question.fromJson(x))),
        submitTime: DateTime.parse(json["submitTime"]),
        totalQuestions: json["totalQuestions"],
        totalRightQuestions: json["totalRightQuestions"],
        totalWrongQuestions: json["totalWrongQuestions"],
    );

    Map<String, dynamic> toJson() => {
        "stdid": stdid,
        "std": std,
        "subID": subId,
        "subjectName": subjectName,
        "chapterID": chapterId,
        "chapterNO": chapterNo,
        "chapterName": chapterName,
        "teacher": teacher,
        "questions": List<dynamic>.from(questions.map((x) => x.toJson())),
        "submitTime": submitTime.toIso8601String(),
        "totalQuestions": totalQuestions,
        "totalRightQuestions": totalRightQuestions,
        "totalWrongQuestions": totalWrongQuestions,
    };
}

class Question {
    int questionid;
    String questionName;
    List<String> option;
    int rightAnswer;
    int userAns;
    bool userResult;

    Question({
        required this.questionid,
        required this.questionName,
        required this.option,
        required this.rightAnswer,
        required this.userAns,
        required this.userResult,
    });

    factory Question.fromJson(Map<String, dynamic> json) => Question(
        questionid: json["questionid"],
        questionName: json["questionName"],
        option: List<String>.from(json["option"].map((x) => x)),
        rightAnswer: json["rightAnswer"],
        userAns: json["user_Ans"],
        userResult: json["user_Result"],
    );

    Map<String, dynamic> toJson() => {
        "questionid": questionid,
        "questionName": questionName,
        "option": List<dynamic>.from(option.map((x) => x)),
        "rightAnswer": rightAnswer,
        "user_Ans": userAns,
        "user_Result": userResult,
    };
}
