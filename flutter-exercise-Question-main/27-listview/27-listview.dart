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
        title: Text("ListView"),
        leading: Icon(Icons.home),
      ),
      body: ListView.builder(
          itemCount: 25,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('List Item $index '),
              leading: Icon(Icons.list),
              trailing: Text('Rudra IT Hub'),
            );
          }),
    );
  }
}
