// ignore_for_file: , unused_local_variable, unused_element, non_constant_identifier_names, file_names

import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:rudra_it_hub/appUrl/all_url.dart';
import 'package:rudra_it_hub/controller/upload_image_controller.dart';
import 'package:rudra_it_hub/model/login_model_alpesh.dart';
import 'package:rudra_it_hub/model/update_model.dart';
import 'package:rudra_it_hub/splash_screen.dart';
import 'package:rudra_it_hub/utils/constants.dart';
import 'package:rudra_it_hub/utils/preference_helper.dart';
import 'package:rudra_it_hub/utils/prefrences.dart';
import 'package:rudra_it_hub/view/screens/login_view.dart';
import 'package:rudra_it_hub/widgets/commo_alert_dilog.dart';
import 'package:rudra_it_hub/widgets/common_appbar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class SignUpController extends GetxController {
  final RxString selectedGender = 'Select Gender'.obs;
  final RxString selectedBirthDate = 'Select Date'.obs;
  final RxString selectedDesignation = 'Select Designation'.obs;

  RxList<String> genders = ["Select Gender", "Male", "Female", "Other"].obs;
  Rx<String> firstNameobx = ''.obs;
  Rx<String> lastNameobx = ''.obs;
  Rx<String> emailobx = ''.obs;
  Rx<String> birthdatheobx = ''.obs;
  // Rx<String> lastNameobx = ''.obs;
  // Rx<String> lastNameobx = ''.obs;

  RxList<String> designations =
      ["Select Designation", "Teacher", "Engineer", "Principal"].obs;

  RxString selectedValue = ''.obs;

  RxBool isValid = false.obs;
  RxBool isBirthValid = false.obs;

  void onItemSelected(String value) {
    selectedValue.value = value;
    isValid.value = value.isNotEmpty;
  }
  // void isBirthDateValid(String value){
  //   selectedBirthDate.value = value;
  //   isBirthValid.value = value.isNotEmpty;
  // }

  void clear() {
    firstNameobx.value = '';
    emailobx.value = '';
    lastNameobx.value = '';
    selectedBirthDate.value = 'Select Date';
  }

  Future<bool> updateUser(
      String firstName,
      String lastName,
      String email,
      int genderid,
      int profwshionId,
      DateTime dob,
      File? file,
      BuildContext context) async {
    String formattedDate =
        "${dob.day.toString().padLeft(2, '0')}/${dob.month.toString().padLeft(2, '0')}/${dob.year.toString()}";
    final Map<String, String> requestBody = {
      "firstName": firstName,
      "lastName": lastName,
      "email": email,
      "DOB": formattedDate,
      "genderID": "$genderid",
      "professionId": "$profwshionId"
    };
    final Map<String, String> headers = {
      'Content-Type': 'multipart/form-data',
      'Authorization': userBearerToken!,
    };

    PhotoController photoController = PhotoController();
    var sharedPreferences = await SharedPreferences.getInstance();
    SharedPreferencesHelper sharedPreferencesHelper =
        SharedPreferencesHelper(sharedPreferences);

    String gender = '';
    String desi = '';
    if (genderid == 1) {
      gender = "Male";
    } else if (genderid == 2) {
      gender = "Female";
    } else {
      gender = "Others";
    }
    if (profwshionId == 1) {
      desi = "Student";
    } else if (profwshionId == 2) {
      desi = "Teacher";
    } else {
      desi = "Admin";
    }

    final request = http.MultipartRequest(
        'POST', Uri.parse("$baseUrl$userProfileUpdateUrl"));
    if (file != null) {
      List<int> imageBytes = await file.readAsBytes();

      String encodedFilePath = Uri.encodeFull(file.path);
      var imagePart = await http.MultipartFile.fromPath(
        'userProfile',
        encodedFilePath,
      );

      request.files.add(imagePart);
    }
    request.headers.addAll(headers);
    request.fields.addAll(requestBody);

    final response = await request.send();

    try {
      print("inside try");
      if (response.statusCode == 200) {
        print(gender);
        var response3 = await response.stream.bytesToString();
        var user3 = updateFromJson(response3);
        print(user3.data.userProfile);
        final users = LoginModel(
          status: userData!.status,
          token: userBearerToken!,
          message: userData!.message,
          data: Data(
            id: userData!.data.id,
            firstName: firstName,
            lastName: lastName,
            email: email,
            gender: [Gender(id: genderid, name: gender)],
            dob: formattedDate,
            mobileNumber: userData!.data.mobileNumber,
            profession: [Gender(id: profwshionId, name: desi)],
            userProfile: user3.data.userProfile,
          ),
        );
        print("2nd ty");
        userData = users;
        await sharedPreferencesHelper.putString(
            Preferences.userFullDetails, jsonEncode(users));
        firstNameobx.value = firstName;
        lastNameobx.value = lastName;
        emailobx.value = email;
        selectedBirthDate.value = formattedDate;
        selectedDesignation.value = desi;
        selectedGender.value = gender;
        if (context.mounted) {
          DialogUtils.showCustomDialog(context, "Success", "User Data Updated");
        }
        print("3rd try");
        return true;
      } else if (response.statusCode == 404) {
        if (context.mounted) {
          logOut(context, null);
        }

        return false;
      } else {
        if (context.mounted) {
          var response3 = await response.stream.bytesToString();
          Map<String, dynamic> responseMap = json.decode(response3);
          //  print();
          print("else call form image" + responseMap['message']);
          DialogUtils.showCustomDialog(
              context, "Alert!!", responseMap['message']);
        }
        return false; 
      }
    } catch (e) {
      print(e.toString());
      throw "${e.toString()} Update User";
    }
  }

  void signUp(
      String firstName,
      String lastName,
      String email,
      int gender,
      DateTime dob,
      String mobileNo,
      int professionId,
      File file,
      BuildContext context) async {
    print(dob.toString());

    String formattedDate =
        "${dob.day.toString().padLeft(2, '0')}/${dob.month.toString().padLeft(2, '0')}/${dob.year.toString()}";
    print(formattedDate);

    final Map<String, String> requestBody = {
      "firstName": firstName,
      "lastName": lastName,
      "email": email,
      "genderID": '$gender',
      "DOB": formattedDate,
      "mobileNumber": mobileNo,
      "professionId": '$professionId',
    };

    final Map<String, String> headers = {'Content-Type': 'multipart/form-data'};

    try {
      // List<int> imageBytes = await file.readAsBytes();

      // String fileName = file.path.split('/').last;
      String encodedFilePath = Uri.encodeFull(file.path);
      var imagePart = await http.MultipartFile.fromPath(
        'userProfile',
        encodedFilePath,
      );

      final request =
          http.MultipartRequest('POST', Uri.parse("$baseUrl$signupUrl"));
      request.files.add(imagePart);

      request.fields.addAll(requestBody);

      final response = await request.send();

      if (response.statusCode == 200) {
        if (context.mounted) {
          Get.dialog(
            AlertDialog(
              title:
                  const Text("Success", style: const TextStyle(fontSize: 25)),
              content: const Text(
                "Registration successful",
                style: TextStyle(fontSize: 18),
              ),
              actions: <Widget>[
                Center(
                  child: InkWell(
                    onTap: () {
                      Get.back();
                      Get.offAll(LoginScreen());
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: purpleColor.withOpacity(0.2),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15))),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            left: 7, right: 7, top: 2, bottom: 3),
                        child: Text(
                          'OK',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: purpleColor),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            barrierDismissible: false,
          );
        }
      } else {
        print("Here Elese Call ");
        if (context.mounted) {
          var response3 = await response.stream.bytesToString();
          Map<String, dynamic> responseMap = json.decode(response3);
          DialogUtils.showCustomDialog(
              context, "Alert!!", responseMap['message']);
        }
      }
    } on FormatException {
      DialogUtils.showCustomDialog(
          context, "Ops!!!", "Please upload valid photo ");
    } catch (e) {
      print("Catch$e");
      throw e.toString();

    } finally {
      print("Finally");
    }
  }

  void changeGender(String gender) {
    if (gender != 'Select Gender') {
      selectedGender.value = gender;
      genders.remove('Select Gender');
    }
  }

  void changeBirthDate(String Date) {
    selectedBirthDate.value = Date;
    isBirthValid.value = Date.isNotEmpty;
  }

  void changeDesignation(String Designation) {
    if (Designation != 'Select Designation') {
      selectedDesignation.value = Designation;
      designations.remove('Select Designation');
    }
    void verifyOtp() {}
  }
}
