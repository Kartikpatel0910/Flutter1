import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Sdk(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Sdk extends StatefulWidget {
  const Sdk({super.key});

  @override
  State<Sdk> createState() => _SdkState();
}

class _SdkState extends State<Sdk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Wrap Widgets Demo'),
        ),
        body: Center(
            child: Wrap(
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.brown,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.purple,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.black,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
            ),
          ],
        )));
  }
}
