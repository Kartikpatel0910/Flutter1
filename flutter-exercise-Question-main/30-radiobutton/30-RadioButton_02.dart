
import 'package:flutter/material.dart';

void main(){
  runApp(myApp());
}
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RadioButtonDemo(),
    );
  }
}
class RadioButtonDemo extends StatefulWidget {
  const RadioButtonDemo({super.key});

  @override
  State<RadioButtonDemo> createState() => _RadioButtonDemoState();
}

class _RadioButtonDemoState extends State<RadioButtonDemo> {
  String? Gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        // title: Text("RadioButtom"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Radio(value: "North", groupValue: Gender, activeColor: Colors.green, onChanged: (value){
            setState(() {
              Gender=value.toString();  
            });      
          }),
          Text("North"),
          Radio(value: "South", groupValue: Gender, activeColor: Colors.green, onChanged: (value){
            setState(() {
              Gender=value.toString();  
            });      
          }),
          Text("South"),
           Radio(value: "East", groupValue: Gender, activeColor: Colors.green, onChanged: (value){
            setState(() {
              Gender=value.toString();  
            });      
          }),
          Text("East"),
           Radio(value: "West", groupValue: Gender, activeColor: Colors.green, onChanged: (value){
            setState(() {
              Gender=value.toString();  
            });      
          }),
          Text("West"),
        ],
      ),
    );
  }
}
