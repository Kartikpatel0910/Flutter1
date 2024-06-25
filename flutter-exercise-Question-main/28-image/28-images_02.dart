
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
        body: Column(
           children: [
            SizedBox(

              height: 50,
            ),
            Container(
                child: ClipRRect( 
                  borderRadius: BorderRadius.circular(8),
                child:   Image.asset('images/natural3.jpeg',
                height: 250,
                
                fit: BoxFit.contain,
                matchTextDirection: true,
                
             ),
                ),
           ),
           SizedBox(

            height: 90,
           ),
           Container(
                child: Image.asset('images/Loin2.jpe\g',
                height: 230,
                fit: BoxFit.contain,
                matchTextDirection: true,
             ),
           ),
        
          ],
        ),
      ),
    ),
  );
}