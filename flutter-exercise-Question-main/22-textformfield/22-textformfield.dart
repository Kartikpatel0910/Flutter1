// Pro 2202

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                  ]),
              ]),
          ),
        ),
      ),
    ),
  );
}