Pro -2401


import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: Text(
            "TextfieldDemo",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                style: TextStyle(
                  fontSize: 20,
                ),
                decoration: InputDecoration(
                    prefixIconColor: Colors.pinkAccent,
                    prefixIcon: Icon(Icons.person),
                    label: Text(
                      "Enter Name",
                      style: TextStyle(color: Colors.pinkAccent),
                    ),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.pinkAccent,
                    )),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pinkAccent))),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                style: TextStyle(
                  fontSize: 20,
                ),
                decoration: InputDecoration(
                  prefixIconColor: Colors.pinkAccent,
                  prefixIcon: Icon(Icons.person),
                  hintText: "Enter Your UserName",
                  hintStyle: TextStyle(
                    color: Colors.pinkAccent,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.pinkAccent,
                  )),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                style: TextStyle(
                  fontSize: 20,
                ),
                decoration: InputDecoration(
                    prefixIconColor: Colors.pinkAccent,
                    prefixIcon: Icon(Icons.person),
                    hintText: "Enter a Search term",
                    hintStyle: TextStyle(
                      color: Colors.pinkAccent,
                    ),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pinkAccent))),
              ),
            )
          ],
        ),
      ),
    ),
  );
}


Pro 2402

import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            "TextfieldDemo",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                style: TextStyle(
                  fontSize: 20,
                ),
                decoration: InputDecoration(
                    prefixIconColor: Colors.green,
                    prefixIcon: Icon(Icons.person),
                    label: Text(
                      "Enter Name",
                      style: TextStyle(color: Colors.green),
                    ),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.green,
                    )),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green))),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                style: TextStyle(
                  fontSize: 20,
                ),
                decoration: InputDecoration(
                  prefixIconColor: Colors.green,
                  prefixIcon: Icon(Icons.person),
                  hintText: "Enter Your UserName",
                  hintStyle: TextStyle(
                    color: Colors.green,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.green,
                  )),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                style: TextStyle(
                  fontSize: 20,
                ),
                decoration: InputDecoration(
                    prefixIconColor: Colors.green,
                    prefixIcon: Icon(Icons.person),
                    hintText: "Enter a Search term",
                    hintStyle: TextStyle(
                      color: Colors.green,
                    ),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green))),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
