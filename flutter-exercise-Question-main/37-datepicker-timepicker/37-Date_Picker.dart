import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: snack(),
    );
 }
}

class snack extends StatefulWidget {
  const snack({super.key});

  @override
  State<snack> createState() => _snackState();
}

class _snackState extends State<snack> {
  DateTime std =DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${std.day}-${std.month}-${std.year}"),
            
            ElevatedButton.icon(
              onPressed: ()async{
                final DateTime? dateTime = await showDatePicker(
                  context: context, 
                  firstDate: DateTime(200),
                  lastDate: DateTime(2500) 

              );
              setState(() {
                std = dateTime!;
              });
              }, 
              icon: Icon(Icons.lock_clock),
              label: Text(''))
          ],
        ),
      )
      );
  }
}


Date picker chhe aa