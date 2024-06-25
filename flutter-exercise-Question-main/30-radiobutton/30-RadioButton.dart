
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RadioButton Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? Gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Radio(value: "Yes", groupValue: Gender, activeColor: Colors.pink, onChanged: (value){
            setState(() {
              Gender=value.toString();  
            });      
          }),
          Text("Yes"),
          Radio(value: "No", groupValue: Gender, activeColor: Colors.pink, onChanged: (value){
            setState(() {
              Gender=value.toString();
            }); 
          }),
          Text("No"),
            Radio(value: "Other", groupValue: Gender, activeColor: Colors.pink, onChanged: (value){
            setState(() {
              Gender=value.toString();
            });
          }),
          Text("Other"),
        ],
        
      ),
    );
  }
}
