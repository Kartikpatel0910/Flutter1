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
  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text(
              "Switch Demo",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
            ),
            bottom: TabBar(tabs: [
              Tab(
                text: 'Tab 1',
                icon: Icon(Icons.person),
              ),
              Tab(
                text: 'Tab 2',
                icon: Icon(Icons.home),
              ),
              Tab(
                text: 'Tab 3',
                icon: Icon(Icons.settings),
              ),
              Tab(
                text: 'Tab 4',
                icon: Icon(Icons.help),
              ),
            ]),
          ),
          body: TabBarView(children: [
            Center(
                child: Text(
              'Page 1',
              style: TextStyle(fontSize: 20),
            )),
            Center(
              child: Text(
                'Page 2',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Center(
              child: Text(
                'Page 3',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Center(
              child: Text(
                'Page 4',
                style: TextStyle(fontSize: 20),
              ),
            )
          ])
}
