// To parse this JSON data, do
//
//     final questionApiData = questionApiDataFromJson(jsonString);

import 'dart:convert';

QuestionApiData questionApiDataFromJson(String str) =>
    QuestionApiData.fromJson(json.decode(str));

String questionApiDataToJson(QuestionApiData data) =>
    json.encode(data.toJson());

class QuestionApiData {
  int? status;
  List<Datum>? data;
  String? message;

  QuestionApiData({
    this.status,
    this.data,
    this.message,
  });

  factory QuestionApiData.fromJson(Map<String, dynamic> json) =>
      QuestionApiData(
        status: json["status"],
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
      };
}

class Datum {
  int? queid;
  int? chapterid;
  int? stdid;
  int? subid;
  int? questionNo;
  String? question;
  List<String>? option;
  int? rightAns;

  Datum({
    this.queid,
    this.chapterid,
    this.stdid,
    this.subid,
    this.questionNo,
    this.question,
    this.option,
    this.rightAns,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        queid: json["queid"],
        chapterid: json["chapterid"],
        stdid: json["stdid"],
        subid: json["subid"],
        questionNo: json["question_no"],
        question: json["question"],
        option: json["Option"] == null
            ? []
            : List<String>.from(json["Option"]!.map((x) => x)),
        rightAns: json["rightAns"],
      );

  Map<String, dynamic> toJson() => {
        "queid": queid,
        "chapterid": chapterid,
        "stdid": stdid,
        "subid": subid,
        "question_no": questionNo,
        "question": question,
        "Option":
            option == null ? [] : List<dynamic>.from(option!.map((x) => x)),
        "rightAns": rightAns,
      };
}

class SendResultData {
  String queid;
  String userAnswer;
  SendResultData({required this.queid, required this.userAnswer});
}
