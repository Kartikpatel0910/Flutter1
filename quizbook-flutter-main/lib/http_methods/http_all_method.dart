import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:rudra_it_hub/widgets/commo_alert_dilog.dart';

Future<bool> checkInternetStatus() async {
  try {
    final result = await InternetAddress.lookup('example.com')
        .timeout(const Duration(seconds: 10));
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      return true;
    }
  } on SocketException catch (_) {
    return false;
  } catch (e) {
    return false;
  }
  return false;
}

Future<Response> postMethod(String url, Map<String, dynamic> body,
    Map<String, String> header, BuildContext context) async {
  try {
    if (await checkInternetStatus() == false) {
      // print("Check ");
      if (context.mounted) {
         DialogUtils.showCustomDialog(context, "Conection Lost", 'Check Your Internet Connection And Try Again');
        // commonSnackBar(
        //     context: context,
        //     msg: 'your internet connection and try again');
      }
      throw 'Check Your Internet Conection';
    } else {
      var response =
          await post(Uri.parse(url), headers: header, body: jsonEncode(body));
      return response;
    }
  } catch (e) {
    throw "${e.toString()} common post method";
  }
}

Future<Response> getMethode(
    String url, BuildContext context, Map<String, String> head) async {
  try {
    if (await checkInternetStatus() == false) {
      if (context.mounted) {
                  DialogUtils.showCustomDialog(context, "Conection Lost", 'Check Your Internet Connection And Try Again');

        // commonSnackBar(
        //     context: context,
        //     msg: 'Check Your Internet Connection And Try Again');
      }
      // print('object');
      // const CommonAlertDialog(
      //   message: "Pleaseeee",
      // );
      throw ("Check Your Connection");
    }
    var response = await get(Uri.parse(url), headers: head);
    return response;
  } catch (e) {
    throw ("$e");
  }
}
