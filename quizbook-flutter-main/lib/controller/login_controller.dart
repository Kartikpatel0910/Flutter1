// ignore_for_file: unused_local_variable

import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rudra_it_hub/appUrl/all_url.dart';
import 'package:rudra_it_hub/http_methods/http_all_method.dart';

import '../view/screens/otp_view.dart';
import '../widgets/commo_alert_dilog.dart';

class LoginController extends GetxController {
  var isLoading = false.obs;
  void changeLoading(bool loadingStatus, BuildContext context) {
    if (isLoading.value) {
      Navigator.of(context).pop();
      isLoading.value = loadingStatus;
    } else {
      isLoading.value = loadingStatus;
    }
  }

  Future<void> logInUser(
      BuildContext context, TextEditingController mobileController) async {
    const uri = '$baseUrl$userVerifyUrl';
    try {
      var body = <String, dynamic>{
        "mobileNumber": mobileController.text.toString()
      };
      var header = <String, String>{};
      header['Content-Type'] = 'application/json';

      final response =
          await postMethod('$baseUrl$userVerifyUrl', body, header, context);

      if (response.statusCode == 200) {
        final responseString = response;

        try {
          final PhoneVerificationCompleted verificationCompleted = (AuthCredential phoneAuthCredential){
            FirebaseAuth.instance.signInWithCredential(phoneAuthCredential);
            
          };


        // FirebaseAuth auth =await FirebaseAuth.instance();
          await FirebaseAuth.instance.verifyPhoneNumber(
              verificationCompleted: verificationCompleted,
              // (PhoneAuthCredential credential) {},
              verificationFailed:
               (FirebaseAuthException ex) 
              {
                changeLoading(false, context);
                // commonSnackBar(context: context, msg: ex.toString());
                DialogUtils.showCustomDialog(
                    context, "Sorry", 'Something Went Wrong');
                    print(ex.toString());
                    throw ex.toString();
              },
              codeSent: (String verificationId, int? resendToken) {
                changeLoading(false, context);

                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OTPScreen(
                        verificationId: verificationId,
                        moNumber: mobileController.text.toString(),
                      ),
                    ));
              },
              codeAutoRetrievalTimeout: (String verificationId) {},
              phoneNumber: '+91${mobileController.text.toString()}');
        } catch (e) {
          if (context.mounted) {
            changeLoading(false, context);
          }
          // print("This is Exception $e");
        }
      } else {
        Map<String, dynamic> error = json.decode(response.body);

        if (context.mounted) {
          changeLoading(false, context);
          DialogUtils.showCustomDialog(context, "Sorry", error['message']);
        }
      }
    } catch (e) {
      if (context.mounted) {
        DialogUtils.showCustomDialog(context, "Sorry", e.toString());

        changeLoading(false, context);
      }
throw e.toString();

      // print('Prashant ' + e.toString());
    }
  }
}
