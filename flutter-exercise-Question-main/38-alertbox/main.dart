import 'package:flutter/material.dart';
import 'package:stuerror/AlertBox.dart';

void main() => runApp(const AlertDialogExampleApp());

class AlertDialogExampleApp extends StatelessWidget {
  const AlertDialogExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Alert Box Example ',
      home: DialogExample(),
    );
  }
}
