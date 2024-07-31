import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Textfmd(),
    );
  }
}

class Textfmd extends StatefulWidget {
  const Textfmd({super.key});

  @override
  State<Textfmd> createState() => _TextfmdState();
}

class _TextfmdState extends State<Textfmd> {
  
  final fromkey = GlobalKey<FormState>();
  final TextEditingController name = TextEditingController();
  final TextEditingController phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Form Field Demo'),
      ),
      body: ,
    );
  }
}