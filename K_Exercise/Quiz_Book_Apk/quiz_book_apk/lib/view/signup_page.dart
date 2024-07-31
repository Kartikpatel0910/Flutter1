import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:quiz_book_apk/utils/constant.dart';
import 'package:quiz_book_apk/view/login.dart';

import 'package:quiz_book_apk/widgets/common_button.dart';
import 'package:quiz_book_apk/widgets/common_text_field.dart';

class SignupPage extends StatefulWidget {
  SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController _fstcontroll = TextEditingController();
  final TextEditingController _lstcontroll = TextEditingController();
  final TextEditingController _emlcontroll = TextEditingController();
  final TextEditingController _mcontroll = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  String? dv;
  String? sl;
  DateTime std = DateTime.now();
   String? _validateBirthDate(String? value) {
    if (value == null || value == 'Select Date') {
      return 'Please select your Birth Date';
    }
    return null;
  }
  // String a = 'Select Date';

  File? img;

  @override
  void initState() {
    super.initState();
    _genderController.text = 'Select Gender';
    _dateController.text = 'Select Date';
  }

  Future<void> _pickImg(ImageSource source) async {
    final PickedFile = await ImagePicker().pickImage(source: source);
    if (PickedFile != null) {
      setState(() {
        img = File(PickedFile.path);
      });
    }
  }

  String? _validatemail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    // Use a regular expression to validate the email format
    String pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.blue[300],
        title: const Text('Sign Up'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<String>(
                  value: 'setting',
                  child: Row(
                    children: [
                      Icon(Icons.settings),
                      Text('Setting'),
                    ],
                  ),
                ),
                PopupMenuItem<String>(
                  value: 'Login',
                  child: Row(
                    children: [
                      Icon(Icons.login),
                      Text('Login'),
                    ],
                  ),
                ),
              ];
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Center(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              _pickImg(ImageSource.gallery);
                            },
                            child: ClipOval(
                              child: img == null
                                  ? Image.asset(
                                      pickimg,
                                      height: 150,
                                      width: 150,
                                    )
                                  : Image.file(
                                      img!,
                                      height: 150,
                                      width: 150,
                                      fit: BoxFit.cover,
                                    ),
                            ),
                          ),
                          custom_textfield(
                            keyboardType: TextInputType.name,
                            text: '',
                            labeltext: 'First Name',
                            obscuretext: false,
                            controller: _fstcontroll,
                            hinttext: 'Enter First Name',
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Please Enter Your First Name';
                              }
                              return null;
                            }, hideCounter: false,
                          ),
                          SizedBox(height: 8),
                          custom_textfield(
                            keyboardType: TextInputType.name,
                            text: '',
                            labeltext: 'Last Name',
                            obscuretext: false,
                            controller: _lstcontroll,
                            hinttext: 'Last Name',
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Please Enter Your Last Name';
                              }
                              return null;
                            }, hideCounter: false,
                          ),
                          SizedBox(height: 8),
                          custom_textfield(
                              keyboardType: TextInputType.name,
                              text: '',
                              labeltext: 'Email ID',
                              obscuretext: false,
                              controller: _emlcontroll,
                              hinttext: 'Email ID',
                              validator: _validatemail, 
                              hideCounter: false,),
                          SizedBox(height: 8),
                          custom_textfield(
                            keyboardType: TextInputType.number,
                            text: '',
                            labeltext: 'Mobile Number',
                            obscuretext: false,
                            controller: _mcontroll,
                            hinttext: 'Mobile Number',
                            maxLength: 10,
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Please Enter Your Mobile Number';
                              } else if (value.length != 10) {
                                return 'Please Enter 10 Digit Mobile Number';
                              }
                              return null;
                            }, hideCounter: false,
                          ),
                          SizedBox(height: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // Column for Gender
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Gender',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        DropdownButtonFormField<String>(
                                          hint: Text('Select Gender'),
                                          validator: (value) {
                                            if (value == null ||
                                                value == 'Select Gender') {
                                              return 'Please select your Gender';
                                            }
                                            return null;
                                          },
                                          isExpanded: true,
                                          value: dv,
                                          icon: Icon(Icons.arrow_drop_down),
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18),
                                          onChanged: (String? newvalue) {
                                            setState(() {
                                              dv = newvalue!;
                                            });
                                          },
                                          items: [
                                            DropdownMenuItem(
                                              value: 'one',
                                              child: Text('Male'),
                                            ),
                                            DropdownMenuItem(
                                              value: 'Two',
                                              child: Text('Female'),
                                            ),
                                            DropdownMenuItem(
                                              value: 'Three',
                                              child: Text('Others'),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 16),
                                  // Column for Birth Date
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Birth Date',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        TextFormField(                                            
                                          controller: _dateController,
                                          decoration: InputDecoration(
                                            hintText: 'Select your Birth Date',
                                          ),
                                        validator: _validateBirthDate,
                                         
                                          readOnly: true,
                                          onTap: () async {
                                            final DateTime? dateTime =
                                                await showDatePicker(
                                              context: context,
                                              initialDate: std,
                                              firstDate: DateTime(2000),
                                              lastDate: DateTime(2500),
                                            );
                                            if (dateTime != null) {
                                              setState(() {
                                                std = dateTime;
                                                _dateController.text =
                                                    "${std.day}-${std.month}-${std.year}";
                                              });
                                            }
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          DropdownButtonFormField<String>(
                            isExpanded: true,
                            validator: (value) {
                              if (value == null ||
                                  value == 'Select Designation') {
                                return 'Please select your Designation';
                              }
                              return null;
                            },
                            hint: Text('Select Designation'),
                            value: sl,
                            icon: Icon(Icons.arrow_drop_down),
                            style: TextStyle(color: Colors.black, fontSize: 18),
                            onChanged: (String? newvalue) {
                              setState(() {
                                sl = newvalue!;
                              });
                            },
                            items: [
                              DropdownMenuItem(
                                value: '1',
                                child: Text('Teacher'),
                              ),
                              DropdownMenuItem(
                                value: '2',
                                child: Text('Student'),
                              ),
                              DropdownMenuItem(
                                value: '3',
                                child: Text('Parents'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            custom_button(
              onpress: () {
                if (_formKey.currentState!.validate()) {
                  Get.snackbar(
                    'Your Account Created Successfully', 
                    'PLease Login'
                    );
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   const SnackBar(content: Text("Processing Data")),
                  // );
                  Get.to(() => LoginScreen());
                }
              },
              title: 'Next',
              isfullwidth: true,
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
