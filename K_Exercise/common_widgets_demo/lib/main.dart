import 'package:common_widgets_demo/widget/custombutton.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Hello"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 170,
                  child: custombutton(
                    btnname: 'Login',
                    icon: Icon(Icons.account_circle),
                    callback: () {
                      print("Logged in!....");
                    },
                  ),
                ),
              ],
            ),
          )),
    );
  }
}








// ElevatedButton(
//           onPressed: (){}, 
//           child: Text("Click")),