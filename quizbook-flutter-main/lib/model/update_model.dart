// To parse this JSON data, do
//
//     final update = updateFromJson(jsonString);

import 'dart:convert';

Update updateFromJson(String str) => Update.fromJson(json.decode(str));

String updateToJson(Update data) => json.encode(data.toJson());

class Update {
    int status;
    Data2 data;
    String message;

    Update({
        required this.status,
        required this.data,
        required this.message,
    });

    factory Update.fromJson(Map<String, dynamic> json) => Update(
        status: json["status"],
        data: Data2.fromJson(json["data"]),
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": data.toJson(),
        "message": message,
    };
}

class Data2 {
    int id;
    String firstName;
    String lastName;
    String email;
    List<Gender2> gender;
    String dob;
    String mobileNumber;
    List<Gender2> profession;
    String userProfile;
    String tokens;

    Data2({
        required this.id,
        required this.firstName,
        required this.lastName,
        required this.email,
        required this.gender,
        required this.dob,
        required this.mobileNumber,
        required this.profession,
        required this.userProfile,
        required this.tokens,
    });

    factory Data2.fromJson(Map<String, dynamic> json) => Data2(
        id: json["id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        gender: List<Gender2>.from(json["gender"].map((x) => Gender2.fromJson(x))),
        dob: json["DOB"],
        mobileNumber: json["mobileNumber"],
        profession: List<Gender2>.from(json["profession"].map((x) => Gender2.fromJson(x))),
        userProfile: json["userProfile"],
        tokens: json["tokens"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "gender": List<dynamic>.from(gender.map((x) => x.toJson())),
        "DOB": dob,
        "mobileNumber": mobileNumber,
        "profession": List<dynamic>.from(profession.map((x) => x.toJson())),
        "userProfile": userProfile,
        "tokens": tokens,
    };
}

class Gender2 {
    int id;
    String name;

    Gender2({
        required this.id,
        required this.name,
    });

    factory Gender2.fromJson(Map<String, dynamic> json) => Gender2(
        id: json["_id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
    };
}
