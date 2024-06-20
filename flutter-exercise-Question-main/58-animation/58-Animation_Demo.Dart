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
  double _width = 200;
  double _hight = 200;
  void _setmore() {
    setState(() {
      _width = 400;
      _hight = 400;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tween Animation Widgets Demo'),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                _setmore();
              },
              child: Text('Animation')),
          AnimatedContainer(
            height: _hight,
            width: _width,
            color: Colors.lightBlue[200],
            duration: Duration(milliseconds: 400),
            child: Center(
              child: Text(
                "Animation",
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
