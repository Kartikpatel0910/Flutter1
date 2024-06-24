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
  TimeOfDay srs = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${srs.hour}-${srs.minute}"),
            ElevatedButton.icon(
              onPressed: ()async{
                final TimeOfDay? timeOfDay = await showTimePicker(
                  context: context, 
                  initialTime: srs,
              );
              setState(() {
                srs = timeOfDay!;
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

Time picker chhe aa