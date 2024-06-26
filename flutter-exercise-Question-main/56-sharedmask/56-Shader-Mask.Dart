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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text("Shader Mask demo"), backgroundColor: Colors.blue),
      body: Padding(
          padding: EdgeInsets.all(8),
          child: Center(
              child: ShaderMask(
            shaderCallback: (Rect bounds) {
              return RadialGradient(
                center: Alignment.topRight,
                radius: 4,
                colors: [
                  Colors.redAccent,
                  Colors.black,
                  Colors.blueAccent,
                  Colors.green
                ],
                tileMode: TileMode.repeated,
              ).createShader(bounds);
            },
            child: Text(
              'This is a Cool ',
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
          ))),
    );
  }
}
