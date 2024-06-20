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
        title: Text("Stack Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 250,
                  width: 250,
                  color: Colors.teal,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.red,
                ),
                Container(
                  height: 150,
                  width: 150,
                  color: Colors.green,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'My Image',
                      textAlign: TextAlign.start,
                    ),
                    Image.network(
                      'https://images.pexels.com/photos/906150/pexels-photo-906150.jpeg?auto=compress&cs=tinysrgb&w=600',
                      height: 100,
                      width: 100,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
