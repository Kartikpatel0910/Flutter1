import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Checkbox Example',
            style: TextStyle(color: Colors.limeAccent),
          ),
          backgroundColor: Colors.brown,
        ),
        body: CheckboxWidget(),
      ),
    );
  }
}

class CheckboxWidget extends StatefulWidget {
  @override
  _CheckboxWidgetState createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
              bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.person),
            ),
            Tab(
              icon: Icon(Icons.settings),
            ),
          ])),
          body: TabBarView(children: [
            Container(color: Colors.teal, child: Icon(Icons.home)),
            Container(
              color: Colors.green,
              child: Icon(Icons.person),
            ),
            Container(
              color: Colors.lightGreen,
              child: Icon(Icons.settings),
            ),
          ]),
        ));
  }
}