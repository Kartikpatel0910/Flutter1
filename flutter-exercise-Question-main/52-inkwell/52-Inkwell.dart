
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ink(),
    );
  }
}

class ink extends StatefulWidget {
  const ink({super.key});

  @override
  State<ink> createState() => _inkState();
}

class _inkState extends State<ink> {
   bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("InkWall Demo"),backgroundColor: Colors.amber,),

      body: GestureDetector(
         onTap: () {
        setState(() {
          selected = ! selected;
        });
      }, 
   
        child: Center(
          child: InkWell(
            // onTap: () {
            //   print("Text me");
            // },
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
        
              width: selected ? 400.0 : 200.0,
              height: selected ? 200.0 : 100.0,
              color: selected ? Colors.blue : Colors.red,
              alignment: selected ? Alignment.center : Alignment.topCenter,
              curve: Curves.linear,
              child: Center(child: Text(selected ? "Tap me!" : "Tap me!")),
            ),
          ),
        ),
      ),
    );
  }
}