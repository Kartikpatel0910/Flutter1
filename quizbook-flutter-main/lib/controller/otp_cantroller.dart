// ignore_for_file: unused_local_variable, body_might_complete_normally_catch_error

import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:rudra_it_hub/appUrl/all_url.dart';
import 'package:rudra_it_hub/http_methods/http_all_method.dart';
import 'package:rudra_it_hub/splash_screen.dart';
import 'package:rudra_it_hub/utils/preference_helper.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../model/login_model_alpesh.dart';
import '../utils/prefrences.dart';
import '../view/screens/dashboard_view.dart';
import '../widgets/commo_alert_dilog.dart';

class OTPController extends GetxController {
  var isLoading = false.obs;
  void changeLoading(bool loadingStatus, BuildContext context) {
    if (isLoading.value) {
      Navigator.of(context).pop();
      isLoading.value = loadingStatus;
    } else {
      isLoading.value = loadingStatus;
    }
  }

  Future<void> verifyOTP(
      String verificationId,
      TextEditingController otpController,
      String moNumber,
      BuildContext context) async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId, smsCode: otpController.text.toString());

    try {
      FirebaseAuth.instance
          .signInWithCredential(credential)
          .catchError((onError) async {
        // commonSnackBar(context: context, msg: 'Please enter correct otp');
        changeLoading(false, context);
        DialogUtils.showCustomDialog(
            context, "Wrong OTP", 'Please enter correct otp');
      }).then((value) async {
        changeLoading(false, context);
        LoginModel users = LoginModel(
            data: Data(
              id: 0,
              firstName: '',
              lastName: '',
              email: '',
              gender: [],
              dob: '',
              mobileNumber: '',
              profession: [],
              userProfile: '',
            ),
            message: '',
            status: 0,
            token: '');

        final Map<String, dynamic> requestBody = {
          "mobileNumber": moNumber,
        };
        final Map<String, String> headers = {
          'Content-Type': 'application/json'
        };
        const uri = '$baseUrl$loginUrl';
        var response = await postMethod(uri, requestBody, headers, context);

        try {
          if (response.statusCode == 200) {
            changeLoading(false, context);
            LoginModel users = loginModelFromJson(response.body);
            userData = users;
            userBearerToken = users.token;
            userData = users;
            var sharedPreferences = await SharedPreferences.getInstance();
            SharedPreferencesHelper sharedPreferencesHelper =
                SharedPreferencesHelper(sharedPreferences);

            sharedPreferencesHelper.putBool(Preferences.userLogin, true);
            sharedPreferencesHelper.putString(Preferences.token, users.token);
            await sharedPreferencesHelper.putString(
                Preferences.userFullDetails, jsonEncode(users));

            if (context.mounted) {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AppbarBottomBarScreen(),
                  ),
                  (route) => false);
            }
          } else {
            // print('Here 3');
            changeLoading(false, context);

            if (context.mounted) {
              // commonSnackBar(context: context, msg: "catch ${response.body}");
              Map<String, dynamic> error = json.decode(response.body);
              DialogUtils.showCustomDialog(context, "Ops!!!", error['message']);
            }
          }
        } catch (e) {
          changeLoading(false, context);
          if (context.mounted) {
            // commonSnackBar(context: context, msg: "catch ${e.toString()}");
            DialogUtils.showCustomDialog(context, "Ops!!!", e.toString());
          }
          throw e.toString();
        }
      });
    } catch (e) {
      changeLoading(false, context);
      if (context.mounted) {
        DialogUtils.showCustomDialog(context, "Ops!!!", 'Something Went Wrong');
      }
      throw e.toString();
    }
  }
}
