import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Builder(builder: (context) {
          return Center(
            child: ElevatedButton(
                onPressed: () {
                  final msd = SnackBar(
                    content: Text('snackbar slide'),
                    action: SnackBarAction(label: 'cancel', onPressed: () {}),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(msd);
                },
                child: Text("Snackbar")),
          );
        }),
      ),
    );
  }
}