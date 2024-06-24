// Pro 2001

	import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Hello VK",
          ),
        ),
        body: Center(
          child: Center(
            child: Text(
              "Hello Guys Welcome to my New Applcation ",
              style: TextStyle(
                  color: Colors.blue,
                  textBaseline: TextBaseline.alphabetic,
                  backgroundColor: Color.fromARGB(255, 22, 160, 102),
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.combine(
                      [TextDecoration.overline, TextDecoration.underline]),
                  decorationColor: Colors.lightBlue[300]),
            ),
          ),
        ),
      ),
    ),
  );
}

// Pro 2002

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Kartik",
          ),
        ),
        body: Center(
          child: Center(
            child: Text(
              "My Name is Kartik ",
              style: TextStyle(
                  color: Color.fromARGB(255, 57, 127, 185),
                  textBaseline: TextBaseline.alphabetic,
                  backgroundColor: Color.fromARGB(255, 115, 219, 176),
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.combine(
                      [TextDecoration.overline, TextDecoration.underline]),
                  decorationColor: Color.fromARGB(255, 14, 129, 81)),
            ),
          ),
        ),
      ),
    ),
  );
}

//Pro 2003

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Kartik",
          ),
        ),
        body: Center(
          child: Column(children: [
            Text(
              "Good Morning ",
              style: TextStyle(
                  color: Color.fromARGB(255, 231, 56, 25),
                  textBaseline: TextBaseline.alphabetic,
                  backgroundColor: Color.fromARGB(255, 57, 127, 185),
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  decoration: TextDecoration.underline,
                  decorationColor: Color.fromARGB(255, 14, 129, 81)),
            ),
            Text(
              "Good Evening",
              style: TextStyle(
                  color: Color.fromARGB(255, 57, 127, 185),
                  textBaseline: TextBaseline.alphabetic,
                  backgroundColor: Color.fromARGB(255, 115, 219, 176),
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.solid,
                  decorationColor: Color.fromARGB(255, 14, 129, 81)),
            ),
            Text(
              "Good Night",
              style: TextStyle(
                  color: Color.fromARGB(255, 57, 127, 185),
                  textBaseline: TextBaseline.alphabetic,
                  backgroundColor: Color.fromARGB(255, 115, 219, 176),
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.solid,
                  decorationColor: Color.fromARGB(255, 14, 129, 81)),
            ),
            Text(
              "Greetings, Planet!",
              style: TextStyle(
                  color: Color.fromARGB(255, 57, 127, 185),
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.wavy,
                  textBaseline: TextBaseline.alphabetic,
                  backgroundColor: Color.fromARGB(255, 115, 219, 176),
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                  decorationColor: Color.fromARGB(255, 14, 129, 81)),
            ),
          ]),
        ),
      ),
    ),
  );
}

//Pro 2004

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Kartik",
          ),
        ),
        body: Center(
          child: Container(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "India ",
                style: TextStyle(
                    color: Color.fromARGB(255, 165, 70, 42),
                    textBaseline: TextBaseline.alphabetic,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.double,
                    decorationColor: Color.fromARGB(255, 239, 243, 29)),
              ),
              Text(
                "Good Evening",
                style: TextStyle(
                    color: Color.fromARGB(255, 49, 231, 80),
                    textBaseline: TextBaseline.alphabetic,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.double,
                    decorationColor: Color.fromARGB(255, 239, 243, 29)),
              ),
              Text(
                "Good Night",
                style: TextStyle(
                    color: Color.fromARGB(255, 230, 41, 16),
                    textBaseline: TextBaseline.alphabetic,
                    fontSize: 50,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.solid,
                    decorationColor: Color.fromARGB(255, 239, 243, 29)),
              ),
              Text(
                "Greetings, Planet!",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.solid,
                    textBaseline: TextBaseline.alphabetic,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    decorationColor: Color.fromARGB(255, 81, 37, 117)),
              ),
            ]),
          ),
        ),
      ),
    ),
  );
}

