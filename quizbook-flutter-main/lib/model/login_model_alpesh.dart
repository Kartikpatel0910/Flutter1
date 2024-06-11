// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
    int status;
    Data data;
    String token;
    String message;

    LoginModel({
        required this.status,
        required this.data,
        required this.token,
        required this.message,
    });

    factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        status: json["status"],
        data: Data.fromJson(json["data"]),
        token: json["token"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": data.toJson(),
        "token": token,
        "message": message,
    };
}

class Data {
    int id;
    String firstName;
    String lastName;
    String email;
    List<Gender> gender;
    String dob;
    String mobileNumber;
    List<Gender> profession;
    String userProfile;

    Data({
        required this.id,
        required this.firstName,
        required this.lastName,
        required this.email,
        required this.gender,
        required this.dob,
        required this.mobileNumber,
        required this.profession,
        required this.userProfile,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        gender: List<Gender>.from(json["gender"].map((x) => Gender.fromJson(x))),
        dob: json["DOB"],
        mobileNumber: json["mobileNumber"],
        profession: List<Gender>.from(json["profession"].map((x) => Gender.fromJson(x))),
        userProfile: json["userProfile"],
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
    };
}

class Gender {
    int id;
    String name;

    Gender({
        required this.id,
        required this.name,
    });

    factory Gender.fromJson(Map<String, dynamic> json) => Gender(
        id: json["_id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
    };
}
