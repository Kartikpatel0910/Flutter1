// ignore_for_file: avoid_print, unused_local_variable, file_names

import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';

import 'package:get/get.dart';
import 'package:rudra_it_hub/http_methods/http_all_method.dart';

import '../appUrl/all_url.dart';
import '../splash_screen.dart';
import '../widgets/commo_alert_dilog.dart';

class PhotoController extends GetxController {
  Rx<File?> selectedImage = Rx<File?>(null);
  void clear(){
    selectedImage.value = null;
  }

  Future<void> pickImage(BuildContext context) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      final picker = ImagePicker();
      selectedImage.value = File(pickedFile.path);
      
    }
  }

  Future<void> uploadImage(BuildContext context) async {
    if (selectedImage.value == null) return;

    // final uploadUrl = Uri.parse("$baseUrl$uploadUserProfileUrl");

    List<int> imageBytes = selectedImage.value!.readAsBytesSync();
    String base64Image = base64Encode(imageBytes);

    var headers = <String, String>{};
    headers['Authorization'] = userBearerToken ?? '';
    Map<String, dynamic> body = {
      'avatar': base64Image,
    };
    final response = await postMethod(
        "$baseUrl$uploadUserProfileUrl", body, headers, context);

    
    if (response.statusCode == 200) {
      if (context.mounted) {
        DialogUtils.showCustomDialog(
            context, "Success", 'Profile Upload successfully');
      }
    } else {
      if (context.mounted) {
        Map<String, dynamic> error = json.decode(response.body);
        DialogUtils.showCustomDialog(context, "Ops!!!", error['message']);
      }
    }
    print(response.body);
  }
}
