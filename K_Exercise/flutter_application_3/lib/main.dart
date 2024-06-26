// ignore_for_file: dead_code

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
      debugShowCheckedModeBanner: false,
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
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Elevatedbtn(
            tname: "Elevated Button",
            tColor: Colors.white,
            onPressed: () {
              print('click elevated');
            },
            bgColor: Colors.black),
        txtbtn(
          btname: 'Text Button',
          btColor: Colors.deepPurpleAccent,
          onPressed: () {
            print('click textbtn');
          },
        ),

        outlbtn(
          outlname: 'Outline Button',
          otColor: Colors.blue,
          onPressed: () {
            print('click btn');
          },
          width: 2,
        ),

        iconbtn(
            icons: Icons.star,
            icColor: Colors.brown,
            onPressed: () {
              print('click icon button');
            }),
        ftbtn(
            flotbtname: 'Flowting action Button',
            otColor: Colors.brown,
            onPressed: () {
              print('click float btn');
            }),
        sliv(
          title: 'SliverApp Bar',
          pinned: true,
          floating: true,
          imageurl:
              'https://images.pexels.com/photos/133081/pexels-photo-133081.jpeg?auto=compress&cs=tinysrgb&w=600',
        ),
        //         bsdt(
        //   btnName: 'Button to show',
        //   bgColor: Colors.blue,
        //   onpressed: () {},
        //   closebtn: 'close',
        //   hight: 200,
        //   onback: () {
        //     Navigator.pop(context);
        //   },
        // )
      ]),
    );
  }
}
