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
            AppBar(title: Text("Opacity demo"), backgroundColor: Colors.blue),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Opacity(
                opacity: 1,
                child: Text(
                  'This is Opacity Demo',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.orangeAccent,
                  ),
                ),
              ),
              Opacity(
                opacity: 0.5,
                child: Text(
                  'This is Opacity Demo',
                  style: TextStyle(
                    color: Colors.orangeAccent,
                    fontSize: 50,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
