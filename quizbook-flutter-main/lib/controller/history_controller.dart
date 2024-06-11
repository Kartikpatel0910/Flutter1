import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:rudra_it_hub/appUrl/all_url.dart';
import 'package:rudra_it_hub/http_methods/http_all_method.dart';
import 'package:rudra_it_hub/model/quiz_model.dart';
import 'package:rudra_it_hub/splash_screen.dart';
import 'package:rudra_it_hub/widgets/common_appbar.dart';


import '../widgets/commo_alert_dilog.dart';

class HistoryController extends GetxController {
  final QuizModel _model = QuizModel();
  Rx<HistoryModel> historyModel =
      HistoryModel(data: [], message: '', status: 0).obs;
  int get totalQuestions => _model.totalQuestions;
  int get rightAnswers => _model.rightAnswers;
  int get wrongAnswers => _model.wrongAnswers;
  var isLoading = false.obs;
  

  String getQuestion(int index) => _model.questions[index - 1];
  List<String> getOptions(int index) => _model.options[index - 1];
  String getCorrectAnswer(int index) => _model.options[index - 1][0];

  void loadData(BuildContext context) async {
    // print(userBearerToken!);
    final Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Authorization': userBearerToken!,
    };
    String url = '$baseUrl$historyUrl';
    try {
      
      isLoading.value =true;
      // print("inside try");
      var response = await getMethode(url, context, headers);
      if (response.statusCode == 200) {
        historyModel.value = historyModelFromJson(response.body);
        

      } 
      else if(response.statusCode == 404){
        logOut(context,null);
      }
      else {

        Map<String, dynamic> error = json.decode(response.body);
        // print('error[' 'message' ']');
        isLoading(false);
        if (context.mounted) {
          DialogUtils.showCustomDialog(context, "Sorry", error['message']);

        }
      }
    } catch (e) {
      
      isLoading.value =false;
      // print(e.toString());
        // if (context.mounted) {
        //   DialogUtils.showCustomDialog(context, "Sorry", e.toString());

        // }
      isLoading(false);
      throw e.toString();

    } finally {
      isLoading(false);
    }
  }
}
