import 'dart:math';

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
        title: Text("GridView Demo"),
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
                padding: EdgeInsets.all(20),
                child: Center(
                  child: Text('item 1'),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: 100,
                width: 100,
                color: Colors.green,
                child: Center(
                  child: Text('item 2'),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: 100,
                width: 100,
                color: Colors.blue,
                child: Center(
                  child: Text('item 3'),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: 100,
                width: 100,
                color: Colors.yellow,
                child: Center(
                  child: Text('item 4'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
