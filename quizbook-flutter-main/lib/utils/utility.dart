// ignore_for_file: deprecated_member_use, avoid_print

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:intl/intl.dart';
import 'package:rudra_it_hub/widgets/pogress_indicator.dart';

class Utility {
  static String getRandomString({int length = 10}) {
    const chars =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    Random rnd = Random();
    return String.fromCharCodes(Iterable.generate(
        length, (_) => chars.codeUnitAt(rnd.nextInt(chars.length - 1))));
  }

  static void hideKeyboard() =>
      SystemChannels.textInput.invokeMethod('TextInput.hide');

  static LoadingProgressDialog showLoaderDialog(BuildContext context) {
    LoadingProgressDialog progressDialog = LoadingProgressDialog();
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return WillPopScope(
              onWillPop: () {
                return Future.value(false);
              },
              child: progressDialog);
        });
    return progressDialog;
  }

  static void hideDialog(BuildContext context) {
    Navigator.pop(context);
  }

  static Future<DateTime?> showDatePickerDialog() async {
    DateTime? selectedDate;
    try {
      selectedDate = await showDatePicker(
        context: Get.context!,
        errorFormatText: 'Error occurred',
        cancelText: 'Close',
        confirmText: 'Select',
        errorInvalidText: 'Invalid text',
        fieldHintText: 'Hint text',
        fieldLabelText: 'Please select date',
        helpText: 'Help text',
        keyboardType: TextInputType.number,
        initialDate: DateTime(2004, 02, 15),
        firstDate: DateTime(1990, 01, 01),
        lastDate: DateTime(2015, 01, 01),
      );
      if (selectedDate != null) {
        final formattedDate = DateFormat('dd/MM/yyyy').format(selectedDate);
        print(formattedDate);
        return selectedDate;
      } else {}
      print(selectedDate.toString());
    } catch (e) {
      print(e.toString());
    }
    return selectedDate;
  }

  static bool isEmailValid(String email) {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(email);
  }
}
