import 'dart:convert';

Chapter chapterFromJson(String str) => Chapter.fromJson(json.decode(str));

String chapterToJson(Chapter data) => json.encode(data.toJson());

class Chapter {
    int status;
    List<Datum> data;
    String message;

    Chapter({
        required this.status,
        required this.data,
        required this.message,
    });

    factory Chapter.fromJson(Map<String, dynamic> json) => Chapter(
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
    int chapterno;
    String content;
    int chapterid;
    String teacher;
    int que;
    String minute;

    Datum({
        required this.chapterno,
        required this.content,
        required this.chapterid,
        required this.teacher,
        required this.que,
        required this.minute,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        chapterno: json["chapterno"],
        content: json["content"],
        chapterid: json["chapterid"],
        teacher: json["teacher"],
        que: json["que"],
        minute: json["minute"],
    );

    Map<String, dynamic> toJson() => {
        "chapterno": chapterno,
        "content": content,
        "chapterid": chapterid,
        "teacher": teacher,
        "que": que,
        "minute": minute,
    };
}
