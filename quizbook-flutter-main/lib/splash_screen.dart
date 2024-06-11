import 'package:flutter/material.dart';

import 'package:rudra_it_hub/utils/constants.dart';
import 'package:rudra_it_hub/utils/preference_helper.dart';
import 'package:rudra_it_hub/utils/prefrences.dart';
import 'package:rudra_it_hub/view/screens/dashboard_view.dart';
import 'package:rudra_it_hub/view/screens/login_view.dart';
import 'package:rudra_it_hub/view/screens/signup_view.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'model/login_model_alpesh.dart';

String? userBearerToken;
LoginModel? userData;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    SharedPreferences.getInstance().then((prefs) {
      Future.delayed(const Duration(seconds: 2), () {
        bool loginStatus =
            SharedPreferencesHelper(prefs).getBool(Preferences.userLogin);
        if (loginStatus == true) {
          userData = loginModelFromJson(SharedPreferencesHelper(prefs)
              .getString(Preferences.userFullDetails));
          userBearerToken = userData!.token;
          //     AppbarBottomBarController _controller2 =
          // Get.put(AppbarBottomBarController());
          // _controller2.onTabTapped(0);
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => AppbarBottomBarScreen(),
              ));
        } else {
          print('false');
          // Get.to(LoginScreen());
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => Login(),
              ));
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Image(image: AssetImage(imgLogo))),
    );
  }
}
