// To parse this JSON data, do
//
//     final temperatures = temperaturesFromJson(jsonString);

import 'dart:convert';

Temperatures temperaturesFromJson(String str) => Temperatures.fromJson(json.decode(str));

String temperaturesToJson(Temperatures data) => json.encode(data.toJson());

class Temperatures {
  int status;
  List<Datum> data;
  String message;

  Temperatures({
    required this.status,
    required this.data,
    required this.message,
  });

  factory Temperatures.fromJson(Map<String, dynamic> json) => Temperatures(
    status: json["status"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "message": message,
  };
}

class Datum {
  int stdid;
  String std;
  List<Subject> subjects;

  Datum({
    required this.stdid,
    required this.std,
    required this.subjects,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    stdid: json["stdid"],
    std: json["std"],
    subjects: List<Subject>.from(json["Subjects"].map((x) => Subject.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "stdid": stdid,
    "std": std,
    "Subjects": List<dynamic>.from(subjects.map((x) => x.toJson())),
  };
}

class Subject {
  int subid;
  String subjectName;
  String img;

  Subject({
    required this.subid,
    required this.subjectName,
    required this.img,
  });

  factory Subject.fromJson(Map<String, dynamic> json) => Subject(
    subid: json["subid"],
    subjectName: json["subjectName"],
    img: json["img"],
  );

  Map<String, dynamic> toJson() => {
    "subid": subid,
    "subjectName": subjectName,
    "img": img,
  };
}
