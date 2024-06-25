
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text(
            "My Image App",
            style: TextStyle(
              color: Colors.red,
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
                child:   Image.asset('images/nature2.jpg',
                height: 200,
                fit: BoxFit.cover,
                matchTextDirection: true,
                
             ),
                ),
           ),
           SizedBox(
            height: 90,
           ),
           Container(
                child: Image.asset('images/railway.jpg',
                height: 200,
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