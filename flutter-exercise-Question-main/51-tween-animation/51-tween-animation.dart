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
  double targetValue = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tween Animation Widgets Demo'),
      ),
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: targetValue),
          duration: Duration(milliseconds: 500),
          builder: (BuildContext context, double size, Widget? child) {
            return IconButton(
                iconSize: size,
                color: Colors.blue,
                onPressed: () {
                  setState(() {
                    targetValue = targetValue == 100 ? 250 : 100;
                  });
                },
                icon: Icon(Icons.flutter_dash));
          },
        ),
      ),
    );
  }
}

