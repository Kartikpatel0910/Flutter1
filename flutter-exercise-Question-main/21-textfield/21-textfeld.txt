//Pro 2101

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 79, 247, 163),
          title: Text(
            "TextFiled Demo",
          ),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.person,
                    ),
                    SizedBox(
                      width: 325.0,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Input Your UserName',
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

//Pro 2102

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 233, 79, 58),
          title: Text(
            "TextFiled Demo",
            style: TextStyle(
              color: Colors.cyanAccent,
            ),
          ),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
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
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Input Your UserName',
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
