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
  Color caughtColor = Colors.red;
  double opacitylevel = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade200,
          title: Center(
            child: Text(
              'Flutter GridView Demo',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ),
        ),
        body: GridView.extent(
  primary: false,
  padding: const EdgeInsets.all(16),
  crossAxisSpacing: 10,
  mainAxisSpacing: 10,
  maxCrossAxisExtent: 200.0,
  children: <Widget>[
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text('First', style: TextStyle(fontSize: 20)),
      color: Colors.yellow,
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text('Second', style: TextStyle(fontSize: 20)),
      color: Colors.blue,
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text('Third', style: TextStyle(fontSize: 20)),
      color: Colors.blue,
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text('Four', style: TextStyle(fontSize: 20)),
      color: Colors.yellow,
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text('Fifth', style: TextStyle(fontSize: 20)),
      color: Colors.yellow,
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text('Six', style: TextStyle(fontSize: 20)),
      color: Colors.blue,
    ),
  ],
),
        );
  }
}

