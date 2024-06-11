import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Sdk(),
    );
  }
}

class Sdk extends StatefulWidget {
  const Sdk({super.key});

  @override
  State<Sdk> createState() => _SdkState();
}

class _SdkState extends State<Sdk> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Switch Demo",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Switch(
                  value: isSwitched,
                  inactiveThumbColor: Colors.amber,
                  inactiveTrackColor: Colors.red,
                  activeColor: Colors.blue,
                  activeTrackColor: Colors.brown,
                  dragStartBehavior: DragStartBehavior.down,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  }),
              Text('value: $isSwitched')
            ],
          ),
        ));
  }
}
