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
  String dropdownValue = 'one';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Drop Down Demo'),
        ),
        body: Center(
            child: DropdownButton(
          value: dropdownValue,
          icon: Icon(Icons.menu),
          style: TextStyle(
            color: Colors.black,
          ),
          underline: Container(
            height: 2,
            color: Colors.red,
          ),
          onChanged: (String? newvalue) {
            setState(() {
              dropdownValue = newvalue!;
            });
          },
          items: [
            DropdownMenuItem(value: 'one', child: Text('One')),
            DropdownMenuItem(value: 'Two', child: Text('Two')),
            DropdownMenuItem(value: 'Three', child: Text('Three')),
            DropdownMenuItem(value: 'Four', child: Text('Four')),
            DropdownMenuItem(value: 'Five', child: Text('Five')),
            DropdownMenuItem(value: 'Six', child: Text('Six')),
            DropdownMenuItem(value: 'Seven', child: Text('Seven')),
          ],
        )));
  }
}
