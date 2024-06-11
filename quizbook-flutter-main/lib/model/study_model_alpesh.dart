// // To parse this JSON data, do
// //
// //     final studyModel = studyModelFromJson(jsonString);
//
// import 'dart:convert';
//
// StudyModel studyModelFromJson(String str) => StudyModel.fromJson(json.decode(str));
//
// String studyModelToJson(StudyModel data) => json.encode(data.toJson());
//
// class StudyModel {
//   int? status;
//   List<Datum>? data;
//   String? message;
//
//   StudyModel({
//     this.status,
//     this.data,
//     this.message,
//   });
//
//   factory StudyModel.fromJson(Map<String, dynamic> json) => StudyModel(
//     status: json["status"],
//     data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
//     message: json["message"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "status": status,
//     "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
//     "message": message,
//   };
// }
//
// class Datum {
//   String? id;
//   String? std;
//   List<Subject>? subject;
//   int? stdid;
//   int? v;
//
//   Datum({
//     this.id,
//     this.std,
//     this.subject,
//     this.stdid,
//     this.v,
//   });
//
//   factory Datum.fromJson(Map<String, dynamic> json) => Datum(
//     id: json["_id"],
//     std: json["std"],
//     subject: json["subject"] == null ? [] : List<Subject>.from(json["subject"]!.map((x) => Subject.fromJson(x))),
//     stdid: json["stdid"],
//     v: json["__v"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "_id": id,
//     "std": std,
//     "subject": subject == null ? [] : List<dynamic>.from(subject!.map((x) => x.toJson())),
//     "stdid": stdid,
//     "__v": v,
//   };
// }
//
// class Subject {
//   String? subjectName;
//   String? img;
//   int? subid;
//   String? id;
//
//   Subject({
//     this.subjectName,
//     this.img,
//     this.subid,
//     this.id,
//   });
//
//   factory Subject.fromJson(Map<String, dynamic> json) => Subject(
//     subjectName: json["subjectName"],
//     img: json["img"],
//     subid: json["subid"],
//     id: json["_id"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "subjectName": subjectName,
//     "img": img,
//     "subid": subid,
//     "_id": id,
//   };
// }
