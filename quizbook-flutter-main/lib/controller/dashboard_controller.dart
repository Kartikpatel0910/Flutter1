// ignore_for_file: unnecessary_import, file_names, avoid_print, curly_braces_in_flow_control_structures, unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class AppbarBottomBarController extends GetxController {
  late  PageController pageController =
      PageController(initialPage: 0, keepPage: true);

  RxInt currentIndex = 0.obs;

  void onTabTapped(int index) {
    currentIndex.value = index;
    print("current index $index");
    pageController.jumpToPage(index);
  }

  // String getPageName() {
  //   if (currentIndex.value == 0) {
  //     return "Series";
  //   } else if (currentIndex.value == 1)
  //     return "Science";
  //   else
  //     return "SignUp";
  // }
}
