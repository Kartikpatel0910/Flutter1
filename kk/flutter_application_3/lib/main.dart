import 'package:flutter/material.dart';
import 'package:flutter_application_3/widget/custombtn.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Demo(),
    );
  }
}

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body: Column(
        //   children: [
        //     custom_btn(
        //         tname: "Elevated Button",
        //         tColor: Colors.white,
        //         onPressed: () {
        //           print('click elevated');
        //         },
        //         bgColor: Colors.black),
        //     txtbtn(
        //       btname: 'Text Button',
        //       btColor: Colors.deepPurpleAccent,
        //       onPressed: () {
        //         print('click textbtn');
        //       },
        //     ),
        //     outlbtn(
        //         outlname: 'Outline Button',
        //         otColor: Colors.blue,
        //         onPressed: () {
        //           print('click btn');
        //         }),
        //     iconbtn(
        //         icons: Icons.star,
        //         icColor: Colors.brown,
        //         onPressed: () {
        //           print('click icon button');
        //         }),
        //     ftbtn(
        //         flotbtname: 'Flowting action Button',
        //         otColor: Colors.brown,
        //         onPressed: () {
        //           print('click float btn');
        //         }),
        body: sliv(
            title: 'SliverApp Bar',
            pinned: true,
            floating: true,
            imageurl: 'https://images.pexels.com/photos/133081/pexels-photo-133081.jpeg?auto=compress&cs=tinysrgb&w=600',));
  }
}
  