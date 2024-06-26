import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:snackbar_demo/theme_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Sdk(),
      debugShowCheckedModeBanner: false,
      theme:  Provider.of<ThemeProvider>(context).themedata,
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
          backgroundColor: Colors.grey.shade200,
          title: Center(
            child: Text(
              'Flutter Draggable Demo',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ),
          actions: [
            Consumer<ThemeProvider>(
              builder: (context, ThemeProvider, child) {
                return Switch(
                  
                    value: ThemeProvider.isselected,
                    onChanged: (value) {
                      ThemeProvider.toggleTheme();
                    });
              },
            )
          ],
        ),
        body: Image.network(
            'https://cdn.pixabay.com/photo/2024/03/12/15/43/great-tit-8629045_640.jpg'));
  }
}
