// To parse this JSON data, do
//
//     final temperatures = temperaturesFromJson(jsonString);

import 'dart:convert';

Result resultFromJson(String str) => Result.fromJson(json.decode(str));

String temperaturesToJson(Result data) => json.encode(data.toJson());

class Result {
  int? status;
  Data? data;
  String? message;

  Result({
    this.status,
    this.data,
    this.message,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    status: json["status"],
    data: json["data"] == null ? null : Data.fromJson(json["data"]),
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": data?.toJson(),
    "message": message,
  };
}

class Data {
  int? userId;
  int? stdid;
  int? subid;
  int? chapterid;
  List<Question>? questions;
  int? totalRightQuestions;
  int? totalWrongQuestions;
  DateTime? submitTime;

  Data({
    this.userId,
    this.stdid,
    this.subid,
    this.chapterid,
    this.questions,
    this.totalRightQuestions,
    this.totalWrongQuestions,
    this.submitTime,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    userId: json["userID"],
    stdid: json["stdid"],
    subid: json["subid"],
    chapterid: json["chapterid"],
    questions: json["questions"] == null ? [] : List<Question>.from(json["questions"]!.map((x) => Question.fromJson(x))),
    totalRightQuestions: json["totalRightQuestions"],
    totalWrongQuestions: json["totalWrongQuestions"],
    submitTime: json["submitTime"] == null ? null : DateTime.parse(json["submitTime"]),
  );

  Map<String, dynamic> toJson() => {
    "userID": userId,
    "stdid": stdid,
    "subid": subid,
    "chapterid": chapterid,
    "questions": questions == null ? [] : List<dynamic>.from(questions!.map((x) => x.toJson())),
    "totalRightQuestions": totalRightQuestions,
    "totalWrongQuestions": totalWrongQuestions,
    "submitTime": submitTime?.toIso8601String(),
  };
}

class Question {
  int? queid;
  int? userAnswer;
  bool? userResult;

  Question({
    this.queid,
    this.userAnswer,
    this.userResult,
  });

  factory Question.fromJson(Map<String, dynamic> json) => Question(
    queid: json["queid"],
    userAnswer: json["user_answer"],
    userResult: json["user_result"],
  );

  Map<String, dynamic> toJson() => {
    "queid": queid,
    "user_answer": userAnswer,
    "user_result": userResult,
  };
}
