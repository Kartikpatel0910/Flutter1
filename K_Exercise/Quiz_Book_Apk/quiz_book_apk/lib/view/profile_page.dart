import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:quiz_book_apk/utils/constant.dart';
import 'package:quiz_book_apk/view/bottom_tabbar.dart';
import 'package:quiz_book_apk/view/login.dart';
import 'package:quiz_book_apk/widgets/common_button.dart';
import 'package:quiz_book_apk/widgets/common_text_field.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController _fstcontroll = TextEditingController();
  final TextEditingController _lstcontroll = TextEditingController();
  final TextEditingController _emlcontroll = TextEditingController();
  final TextEditingController _mcontroll = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  String dv = 'one';
  String sl = '1';
  DateTime std = DateTime.now();
  String a = 'Select Date';

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
        title: const Text('Profile'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<String>(
                  value: 'Log out',
                  child: InkWell(
                    onTap: () {
                      Get.to(() => LoginScreen());
                    },
                    child: Row(
                      children: [
                        Icon(Icons.logout),
                        Text('Log Out'),
                      ],
                    ),
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
                            },
                            hideCounter: false,
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
                            },
                            hideCounter: false,
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
                            hideCounter: false,
                          ),
                          SizedBox(height: 8),
                          custom_textfield(
                            keyboardType: TextInputType.name,
                            text: '',
                            labeltext: 'Mobile Number',
                            obscuretext: false,
                            controller: _mcontroll,
                            hinttext: 'Mobile Number',
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Please Enter Your Mobile Number';
                              }
                              return null;
                            },
                            hideCounter: false,
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
                                        SizedBox(height: 15),
                                        DropdownButton<String>(
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
                                              child: Text(
                                                'Select Gender',
                                                style: TextStyle(
                                                    color: Colors.black54),
                                              ),
                                            ),
                                            DropdownMenuItem(
                                              value: 'Two',
                                              child: Text('Male'),
                                            ),
                                            DropdownMenuItem(
                                              value: 'Three',
                                              child: Text('Female'),
                                            ),
                                            DropdownMenuItem(
                                              value: 'Four',
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
                                        TextField(
                                          controller: _dateController,
                                          decoration: InputDecoration(),
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
                          DropdownButton<String>(
                            isExpanded: true,
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
                                child: Text(
                                  'Select Designation',
                                  style: TextStyle(color: Colors.black54),
                                ),
                              ),
                              DropdownMenuItem(
                                value: '2',
                                child: Text('Teacher'),
                              ),
                              DropdownMenuItem(
                                value: '3',
                                child: Text('Student'),
                              ),
                              DropdownMenuItem(
                                value: '4',
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
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Processing Data")),
                  );
                  Get.to(() => BottomTabbar());
                }
              },
              title: 'Update',
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
