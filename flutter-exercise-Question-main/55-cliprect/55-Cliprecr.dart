
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: clip(),
    );
  }
}

class clip extends StatefulWidget {
  const clip({super.key});

  @override
  State<clip> createState() => _clipState();
}

class _clipState extends State<clip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ClipRRect demo"),
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          child: Container(
            alignment: Alignment.center,
          child: Text("ClipRRect",style: TextStyle(color: Colors.white,fontSize: 20),),
          color: const Color.fromARGB(255, 71, 60, 60),
          width: 300,
          height: 300,
                    
            ),
          ),
        ),
      );
  }
}