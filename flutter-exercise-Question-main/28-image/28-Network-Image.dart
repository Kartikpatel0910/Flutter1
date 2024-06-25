import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text(
            "My Image App",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(100)),
            child: Image.network("https://www.eso.org/public/archives/images/thumb700x/eso1740a.jpg",
            height: 500,
            fit: BoxFit.contain,
            
            ),
          ),
        ),
        ),
      ),
    );
}