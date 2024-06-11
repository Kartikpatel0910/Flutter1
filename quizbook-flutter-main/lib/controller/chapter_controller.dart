
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:rudra_it_hub/appUrl/all_url.dart';
import 'package:rudra_it_hub/http_methods/http_all_method.dart';
import 'package:rudra_it_hub/model/chap_of_sub_model.dart';
import 'package:rudra_it_hub/widgets/commo_alert_dilog.dart';


class ChapterController extends GetxController {
  var isLoading = false.obs;
  Rx<Chapter> chapterList = Chapter(status: 0, data: [], message: '').obs;
  void clearModel(){

    chapterList.value = Chapter(status: 0, data: [], message: '');
  }
  

  void fetchChapter(int stdId, int subId, BuildContext context) async {
    try {
      isLoading(true);

      var headers = <String, String>{};
      headers['Content-Type'] = 'application/json';

      var body = <String, dynamic>{"stdid": stdId, "subid": subId};
      var response =
          await postMethod('$baseUrl$chapterUrl', body, headers, context);

      if (response.statusCode == 200) {
        isLoading(false);
        var jsonString = response.body;
        chapterList.value = chapterFromJson(jsonString);
      } 
      else {
        isLoading(false);
        if (context.mounted) {
          var responseData = json.decode(response.body);
    // String message = responseData['message'];
    //       DialogUtils.showCustomDialog(context,"Ops!!!",message);
        }
      }
    }
    catch(e){
           chapterList.value = Chapter(status: 0, data: [], message: '');
      isLoading(false);
      throw e.toString();

    }
     finally {
      isLoading(false);
    }
  }
}
