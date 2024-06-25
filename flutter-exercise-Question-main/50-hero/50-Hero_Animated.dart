
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: hr(),
    );
  }
}

class hr extends StatefulWidget {
  const hr({super.key});

  @override
  State<hr> createState() => _hrState();
}

class _hrState extends State<hr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
        backgroundColor: const Color.fromARGB(255, 180, 211, 145),
      ),
      body: ListTile(
        leading: Hero(tag: 'tag 1', child: Container(
        color: Colors.green,
        height: 500,
        width: 100,
        ),
        ),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (context) =>
          secondpage(),
        ),
      ),
    ),
  );
  }
}


class secondpage extends StatelessWidget {
  const secondpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(tag: 'tag 1', child: Container(
           color: Colors.green,
           height: 200,
           width: 200,
            )),
          ],
        ),
      ),
    );
  }
}