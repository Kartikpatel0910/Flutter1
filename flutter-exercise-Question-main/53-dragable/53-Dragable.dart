import 'dart:math';

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
      debugShowCheckedModeBanner: false,
      home: drag(),
    );
  }
}

class drag extends StatefulWidget {
  const drag({super.key});

  @override
  State<drag> createState() => _dragState();
}

class _dragState extends State<drag> {
  double left = 0.0;
  double top = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text("Draggable demo"), backgroundColor: Colors.blue),
      body: Stack(
        children: [
          Positioned(
            left: left,
            top: top,
            child: GestureDetector(
              onPanUpdate: (details) {
                left = max(0, left + details.delta.dx);
                top = max(0, top + details.delta.dy);
                setState(() {});
              },
              onTap: () {},
              child: Container(
                height: 200,
                width: 200,
                child: Card(
                  color: Colors.red,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(100))),
                  child: Center(
                      child: Text(
                    "Drag me",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

