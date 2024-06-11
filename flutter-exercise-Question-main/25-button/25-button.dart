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
        backgroundColor: Colors.black,
        title: Text(
          "Button Demo",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextButton(
              child: Text(
                'TextButton',
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
              onPressed: () {
                print('This is TextButton');
              },
            ),
            SizedBox(
              height: 10,
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2))),
                backgroundColor: Colors.yellow,
              ),
              child: Text('Outline Button'),
              onPressed: () {},
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: Text(
                'Enable',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2))),
              ),
              onPressed: () {
                print('Elevated Button Press');
              },
            ),
            SizedBox(
              height: 10,
            ),
            IconButton(
              icon: Icon(Icons.star),
              onPressed: () {
                print("Icon Button");
              },
              iconSize: 30,
            ),
            SizedBox(
              height: 10,
            ),
            FloatingActionButton.extended(
              label: Text(
                "Floating Action Button",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              backgroundColor: Colors.blue,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
