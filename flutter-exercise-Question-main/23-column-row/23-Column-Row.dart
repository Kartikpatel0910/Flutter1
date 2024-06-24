//Pro 2301

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Column and Row",
          ),
        ),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "This is a column",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      text: "Name:",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                      ),
                      children: <InlineSpan>[
                        TextSpan(
                          text: "John Doe",
                          style: TextStyle(
                            color: Colors.deepOrange[600],
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      text: "Email:",
                      style: TextStyle(
                        color: Color.fromARGB(255, 39, 203, 61),
                        fontSize: 30,
                      ),
                      children: <InlineSpan>[
                        TextSpan(
                          text: " johndoe@example.com",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 8, 4, 3),
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}


//Pro 2302

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text(
            "Column and Row",
            style: TextStyle(
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "This is a My column Exercise ",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 151, 103, 52),
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      text: "Name:",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 30,
                      ),
                      children: <InlineSpan>[
                        TextSpan(
                          text: "Rudra IT Hub",
                          style: TextStyle(
                            color: Colors.deepOrange[600],
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      text: "Email:",
                      style: TextStyle(
                        color: Color.fromARGB(255, 39, 203, 61),
                        fontSize: 30,
                      ),
                      children: <InlineSpan>[
                        TextSpan(
                          text: " rudraithub123@gmail.com",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 8, 4, 3),
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}