
import 'package:flutter/cupertino.dart';
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
      home: Radiodemo(),
    );
  }
}

class Radiodemo extends StatefulWidget {
  const Radiodemo({super.key});

  @override
  State<Radiodemo> createState() => _RadiodemoState();
}

class _RadiodemoState extends State<Radiodemo> {
  String? Language = "Flutter";
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 34, 145, 38),
        title: Text("Radio Button Demo",
      style: TextStyle(
        color: Colors.yellow,
        fontWeight: FontWeight.bold,
      ),
      ),),
     body: SizedBox(

          height: 200, 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(

                height: 80,
                child: Row(
                  children: [
                    Icon(Icons.select_all_outlined),
                    SizedBox(width: 10), 
                    RichText(
                      text: TextSpan(
                        text: "Please Select your Language",
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4, ),
              Row(
                children: [
                  Radio(
                    value: "Flutter",
                    groupValue: Language,
                    activeColor: Colors.yellow,
                    onChanged: (value) {
                      setState(() {
                        Language = value.toString();
                      });
                    },
                  ),
                  Text("Flutter"),
                   ],
                  ),
              
                  Row(
                    children: [
                      Radio(
                        value: "NodeJS",
                        groupValue: Language,
                        activeColor: Colors.yellow,
                        onChanged: (value) {
                          setState(() {
                            Language = value.toString();
                          });
                        },
                      ),
                  Text("NodeJS"),
                  ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: "React",
                        groupValue: Language,
                        // autofocus: true,
                        // focusColor: Colors.black,
                        // overlayColor: MaterialStatePropertyAll(Colors.orange),
                        activeColor: Colors.yellow,
                        onChanged: (value) {
                          setState(() {
                            Language = value.toString();
                          });
                        },
                      ),
                  Text("React"),
                   ],
                  ),
                 Text("Selected Language:$Language"), 
                ],
              ),
             
         ),   
          
      );
  }
}
