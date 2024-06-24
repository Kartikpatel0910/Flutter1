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
      home: cstpaint(),
    );
  }
}

class cstpaint extends StatefulWidget {
  const cstpaint({super.key});

  @override
  State<cstpaint> createState() => _cstpaintState();
}

class _cstpaintState extends State<cstpaint> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text("Shader Mask demo"), backgroundColor: Colors.blue),
      body: Padding(
          padding: EdgeInsets.all(8),
          child: Center(
              child: CustomPaint(
            child: Text(
              'This is Pac-Man',
              style: TextStyle(
                color: Colors.white54,
                backgroundColor: Colors.black,
                fontSize: 30,
              ),
            ),
            painter: DemoPainter(),
          ))),
    );
  }
}

class DemoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var center = size / 2;
    var paint = Paint()..color = Colors.yellow;
    canvas.drawArc(
        Rect.fromCenter(
            center: Offset(center.width, center.height),
            width: 250,
            height: 250),
        0.4,
        2 * 3.14 - 0.8,
        true,
        paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}