
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(),
      body: GestureDetector(
      onTap: () {
        setState(() {
          selected = ! selected;
        });
      }, 
      child: Center(
        child: AnimatedContainer(
          
          duration: Duration(seconds: 1),
        
        width: selected ? 400.0 : 200.0,
        height: selected ? 200.0 : 100.0,
        color: selected ? Colors.blue : Colors.red,
        alignment: selected ? Alignment.center : Alignment.topCenter,
        curve: Curves.linear,
        child: Text(selected ? "Expands" : "Not Expands",style: TextStyle(color: Colors.black,fontSize: 30),),
        ),
      ),  
    )
    );
    
  }
}
