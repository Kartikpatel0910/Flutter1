// To parse this JSON data, do
//
//     final temperatures = temperaturesFromJson(jsonString);

import 'dart:convert';

Temperatures temperaturesFromJson(String str) => Temperatures.fromJson(json.decode(str));

String temperaturesToJson(Temperatures data) => json.encode(data.toJson());

class Temperatures {
  int status;
  List<Question2> data;
  String message;

  Temperatures({
    required this.status,
    required this.data,
    required this.message,
  });

  factory Temperatures.fromJson(Map<String, dynamic> json) => Temperatures(
    status: json["status"],
    data: List<Question2>.from(json["data"].map((x) => Question2.fromJson(x))),
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "message": message,
  };
}

class Question2 {
  int queid;
  int chapterid;
  int stdid;
  int subid;
  int questionNo;
  String question;
  Option option;
  String rightAns;

  Question2({
    required this.queid,
    required this.chapterid,
    required this.stdid,
    required this.subid,
    required this.questionNo,
    required this.question,
    required this.option,
    required this.rightAns,
  });

  factory Question2.fromJson(Map<String, dynamic> json) => Question2(
    queid: json["queid"],
    chapterid: json["chapterid"],
    stdid: json["stdid"],
    subid: json["subid"],
    questionNo: json["question_no"],
    question: json["question"],
    option: Option.fromJson(json["Option"]),
    rightAns: json["rightAns"],
  );

  Map<String, dynamic> toJson() => {
    "queid": queid,
    "chapterid": chapterid,
    "stdid": stdid,
    "subid": subid,
    "question_no": questionNo,
    "question": question,
    "Option": option.toJson(),
    "rightAns": rightAns,
  };
}

class   Option {
  String a;
  String b;
  String c;
  String d;

  Option({
    required this.a,
    required this.b,
    required this.c,
    required this.d,
  });

  factory Option.fromJson(Map<String, dynamic> json) => Option(
    a: json["a"],
    b: json["b"],
    c: json["c"],
    d: json["d"],
  );

  Map<String, dynamic> toJson() => {
    "a": a,
    "b": b,
    "c": c,
    "d": d,
  };
}
