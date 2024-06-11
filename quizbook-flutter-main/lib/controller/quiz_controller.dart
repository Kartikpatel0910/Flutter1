// ignore_for_file: prefer_const_constructors, avoid_print, empty_catches, file_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rudra_it_hub/appUrl/all_url.dart';
import 'package:rudra_it_hub/http_methods/http_all_method.dart';
import 'package:rudra_it_hub/model/question2_model.dart';
import 'package:rudra_it_hub/model/result.dart';
import 'package:rudra_it_hub/splash_screen.dart';
import 'package:rudra_it_hub/view/screens/congratulation_view.dart';
import 'package:rudra_it_hub/view/screens/quiz_view_alpesh.dart';
import 'package:rudra_it_hub/widgets/common_appbar.dart';

import '../model/question_api_data.dart';
import '../widgets/commo_alert_dilog.dart';

class QuestionController extends GetxController {
  RxInt currentQuestionIndex = 1.obs;
  RxBool isLoading = false.obs;
  Rx<QuestionApiData> apiQuestion =
      QuestionApiData(data: [], message: '', status: 0).obs;
  RxList<Question2> questions2 = <Question2>[
    Question2(
        queid: 0,
        chapterid: 0,
        stdid: 0,
        subid: 0,
        questionNo: 0,
        question: '0',
        option: Option(a: 'a', b: 'b', c: 'c', d: 'd'),
        rightAns: '')
  ].obs;
  Rx<QuestionApiData>? apiQuestions;

  void clearModel() {
    apiQuestion.value = QuestionApiData(data: [], message: '', status: 0);
  }

  RxInt selectedOptionIndex = (-1).obs;

  Future<void> resultDataSend({
    required BuildContext context,
    required int stdid,
    required int subid,
    required int chapterid,
    required List questions,
  }) async {
    print('result send call');

    String url = '$baseUrl$resultUrl';
    try {
      Map<String, String> headers = {
        'Content-Type': 'application/json',
        'Authorization': userBearerToken!,
      };
      var body = <String, dynamic>{
        // "userID": userID,
        "stdid": stdid,
        "subid": subid,
        "chapterid": chapterid,
        "questions": questions
      };
      print('result 1');

      // var encodedBody = jsonEncode(body);

      var response = await postMethod(url, body, headers, context);
      print('result 2');
      print(userBearerToken);
      var finalResult = resultFromJson(response.body);

      if (response.statusCode == 200) {
                submiting = false;

        if (context.mounted) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (_) => CongratulationScreen(
                noOfTrueAns: finalResult.data!.totalRightQuestions!,
                noOfWrongAns: finalResult.data!.totalWrongQuestions!,
              ),
            ),
          );
        }
      } else if (response.statusCode == 404) {
        logOut(context, null);
        submiting = false;
      } else {
        submiting = false;

        if (context.mounted) {
          Map<String, dynamic> error = json.decode(response.body);
          DialogUtils.showCustomDialog(context, "Ops!!!", error['message']);
        }
        print('object');
      }
    } catch (e) {
      submiting = false;

      if (context.mounted) {}
      print(e.toString());
      throw "${e.toString()} Quiz Cantroller Result Data Send";
    }
  }

  Future<void> getQuestionList(
      {required int stdId,
      required subId,
      required chapterId,
      required BuildContext context}) async {
    try {
      print('inside try');
      isLoading.value = true;

      var body = <String, dynamic>{
        "stdid": stdId,
        "subid": subId,
        "chapterid": chapterId
      };
      final Map<String, String> headers = {'Content-Type': 'application/json'};

      var response =
          await postMethod('$baseUrl$questionUrl', body, headers, context);
      if (response.statusCode == 200) {
        apiQuestion.value = questionApiDataFromJson(response.body);
        isLoading.value = false;
        print('inside try suc');
      } else if (response.statusCode == 403) {
        isLoading.value = false;

        // if (context.mounted)  {
        //   json.decode(response.body);
        //   DialogUtils.showCustomDialog(context, "Ops!!!", "No Question Available");
        // }
      } else {
        isLoading.value = false;

        // if (context.mounted) {
        //   Map<String, dynamic> error = json.decode(response.body);
        //   DialogUtils.showCustomDialog(context, "Ops!!!", error['message']);
        // }
      }
    } catch (e) {
      print("error msg ${e.toString()}");

      isLoading.value = false;
      throw "${e.toString()} From Quiz Controller  ";
      // if (context.mounted) {
      //   DialogUtils.showCustomDialog(context, "Ops!!!", e.toString());
      // }
    } finally {
      isLoading.value = false;
    }
  }
}
