import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:rudra_it_hub/splash_screen.dart';
import 'package:rudra_it_hub/utils/constants.dart';
import 'package:rudra_it_hub/view/screens/login_view.dart';
import 'package:rudra_it_hub/widgets/commo_alert_dilog.dart';

Future<void> logOut(BuildContext context, String? message) async {
  void myOptionalFunction() async {
    Get.offAll(LoginScreen());
    await clearSharedPreferences();
  }

  DialogUtils.showCustomDialog(context, "Log Out",
      message == null ? "Your account login in another divice" : message,
      optionalFunction: myOptionalFunction);
  print("LogOut Call");
}

Future<void> clearSharedPreferences() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  print('Logout Call ');
  await prefs.clear();
}

class CommonAppBarScreen extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final bool centerTitle;
  final bool isBackArrow;
  final bool automaticallyImplyLeading;
  final bool isProfile;
  final bool needPopUpButton;

  const CommonAppBarScreen({
    Key? key,
    required this.title,
    this.needPopUpButton = true,
    required this.backgroundColor,
    this.centerTitle = true,
    this.isBackArrow = true,
    this.automaticallyImplyLeading = false,
    this.isProfile = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading:
          isBackArrow ? const BackButton(color: blackColor) : const SizedBox(),
      automaticallyImplyLeading: automaticallyImplyLeading,
      backgroundColor: backgroundColor,
      title: Text(
        title,
        style: const TextStyle(
          color: blackColor,
        ),
      ),
      centerTitle: centerTitle,
      actions: [
        needPopUpButton
            ? PopupMenuButton<String>(
                color: Colors.white,
                itemBuilder: (context) {
                  if (isProfile) {
                    return [
                      PopupMenuItem<String>(
                        value: "logout",
                        textStyle: TextStyle(color: Colors.tealAccent),
                        child: Text(
                          'Log Out',
                          style: TextStyle(color: blackColor, fontSize: 16),
                        ),
                      ),
                    ];
                  }
                  return [];
                },
                onSelected: (String value) {
                  if (value == 'logout') {
                    logOut(context, "You want to logout ? ");
                  }
                },
              )
            : SizedBox.shrink()
      ],
    );
  }
}
