import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Sdk(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Sdk extends StatefulWidget {
  const Sdk({super.key});

  @override
  State<Sdk> createState() => _SdkState();
}

class _SdkState extends State<Sdk> {
  String title = 'First Title';
  String item1 = 'second Item';
  String item2 = 'Third Item';
  String item3 = 'Third Item';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sliver App'),
        ),
        body: Center(
          child: ListTile(
            title: Text(title),
            trailing: PopupMenuButton(
                itemBuilder: (context) => [
                      PopupMenuItem(
                        child: Text(item1),
                        value: item1,
                      ),
                      PopupMenuItem(
                        child: Text(item2),
                        value: item2,
                      ),
                      PopupMenuItem(
                        child: Text(item3),
                        value: item3,
                      ),
                    ],
                onSelected: (String newvalue) {
                  setState(() {
                    title = newvalue;
                  });
                }),
          ),
        ));
  }
}
