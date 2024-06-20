import 'dart:math';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hero Widgets Demo'),
        ),
        body: Center(
          child: ListTile(
            trailing: Hero(tag: 'Tag-1', child: Icon(Icons.person)),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Secondpage(),
            )),
            title: Text('Click Me'),
          ),
        ));
  }
}

class Secondpage extends StatelessWidget {
  const Secondpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: 'Tag-1', 
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ))
          ],
        ),
      ),
    );
  }
}
