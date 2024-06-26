import 'package:flutter/material.dart';
import 'package:navigation2/secondpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: nav(),
    );
  }
}

class nav extends StatefulWidget {
  const nav({super.key});

  @override
  State<nav> createState() => _navState();
}

class _navState extends State<nav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.blue)
          ),
          onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Secondpage()));
        }, child: Text("Goto the Secondpage",style: TextStyle(color: Colors.white),)),
      ),
    );
  }
}

Second Page*
import 'package:flutter/material.dart';

class Secondpage extends StatelessWidget {
  const Secondpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SecondPage"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.amber)
          ),
          onPressed: (){
          Navigator.pop(context);
        }, child: Text("Go Back FirstScreen",style: TextStyle(color: Colors.white),)),
      ),
    );
  }
}
