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
  String dropdownValue = 'one';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 233, 79, 58),
          title: Text(
            "TextForm Filed Demo",
            style: TextStyle(
              color: Colors.cyanAccent,
            ),
          ),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              children: [
                Row(
                  children: [
                    
                    Icon(
                      Icons.person,
                      color: Colors.red[700],
                    ),
                    SizedBox(
                      width: 325.0,
                      child: TextFormField(

                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide
                              ( color: 
                              Colors.red)
                              ), 
                          hintText: 'Input Your UserName',
                        ),
                      ),
                    ),
                  ]
                ),
              ]
            ),
          ),
      ),
    );
  }
}
