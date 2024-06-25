
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
  String? City = "Bhavnagar";
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 148, 12, 57),
        title: Text("Radio Button Demo",
      style: TextStyle(
        color: Color.fromARGB(255, 82, 214, 86),
        fontWeight: FontWeight.bold,
      ),
      
      ),
      actions: [Icon(Icons.home,
      color: Colors.amber,
      )],
      ),
     body: Padding(
       padding: const EdgeInsets.all(40),
       child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(

                  height: 45,
                  child: Row(
                    children: [
                      Icon(Icons.select_all_outlined),
                      SizedBox(width: 10), 
                      RichText(
                        text: TextSpan(
                          text: "Please Select your City",
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
                      value: "Ahmedabad",
                      groupValue: City,
                      activeColor: Colors.yellow,
                      onChanged: (value) {
                        setState(() {
                          City = value.toString();
                        });
                      },
                    ),
                    Text("Ahmedabad"),
                     ],
                    ),
                
                    Row(
                      children: [
                        Radio(
                          value: "Surat",
                          groupValue: City,
                          activeColor: Colors.yellow,
                          onChanged: (value) {
                            setState(() {
                              City = value.toString();
                            });
                          },
                        ),
                    Text("Surat"),
                    ],
                    ),
                     Row(
                      children: [
                        Radio(
                          value: "Rajkot",
                          groupValue: City,
                          activeColor: Colors.yellow,
                          onChanged: (value) {
                            setState(() {
                              City = value.toString();
                            });
                          },
                        ),
                    Text("Rajkot"),
                    ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: "Bhavnagar",
                          groupValue: City,
                          // autofocus: true,
                          // focusColor: Colors.black,
                          // overlayColor: MaterialStatePropertyAll(Colors.orange),
                          activeColor: Colors.yellow,
                          onChanged: (value) {
                            setState(() {
                              City = value.toString();
                            });
                          },
                        ),
                    Text("Bhavnagar"),
                     ],
                    ),
                   Text("Selected Language:$City"), 
                  ],
                ),
     ),
             
         );  
  }
}
