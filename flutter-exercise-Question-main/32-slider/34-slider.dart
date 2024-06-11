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
  double _currentSliddervalue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Button Demo",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        body: Column(
          children: [
            Slider(
              thumbColor: Colors.blueGrey,
              activeColor: Colors.blue,
              inactiveColor: Colors.deepOrange,
              value: _currentSliddervalue,
              max: 100,
              divisions: 100,
              label: _currentSliddervalue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliddervalue = value;
                });
              },
            ),
            Text(
              'SLIDER VALUE=========>$_currentSliddervalue',
              style: TextStyle(
                fontSize: 25,
                color: Colors.green,
              ),
            )
          ],
        ));
  }
}
