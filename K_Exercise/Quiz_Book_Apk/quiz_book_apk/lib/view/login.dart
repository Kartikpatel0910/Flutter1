import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:quiz_book_apk/utils/constant.dart';
import 'package:quiz_book_apk/view/bottom_tabbar.dart';
import 'package:quiz_book_apk/view/signup_page.dart';
import 'package:quiz_book_apk/widgets/common_button.dart';
import 'package:quiz_book_apk/widgets/common_text_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _controller = TextEditingController();

  String? _validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please Fill this Field';
    }
    return null;
  }

  late Null Function(BuildContext context,
      {int? currentLength, bool? isFocused, int? maxLength}) buildCounter;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(bimg),
              fit: BoxFit.cover)),
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 120),
                      Image.asset(
                        logo,
                        height: 100,
                        width: 100,
                      ),
                      const SizedBox(height: 10),
                      Image.asset(
                        quizBook,
                        height: 22,
                        width: 150,
                      ),
                      const SizedBox(height: 50),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              custom_textfield(
                                keyboardType: TextInputType.number,
                                text: '+91',
                                controller: _controller,
                                labeltext: 'Mobile Number',
                                obscuretext: false,
                                maxLength: 10,
                                hinttext: 'Enter Your Mobile Number',
                                validator: (String? value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please Enter Your Mobile Number';
                                  }
                                  return null;
                                },
                                hideCounter: true,
                              ),
                              const SizedBox(height: 15),
                              InkWell(
                                onTap: () {
                                  Get.to(SignupPage());
                                },
                                child: const Text(
                                  'Create New Account',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              custom_button(
                onpress: () {
                  if (_formKey.currentState!.validate()) {
                    Get.snackbar('Login Successfully...', '');
                    // ScaffoldMessenger.of(context).showSnackBar(
                    //   const SnackBar(content: Text("Processing Data")),
                    // );
                    Get.to(() => BottomTabbar());
                  }
                },
                title: 'Submit',
                isfullwidth: true,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    ]);
  }
}
