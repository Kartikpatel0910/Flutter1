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
  Color caughtColor = Colors.red;
  double opacitylevel = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade200,
          title: Center(
            child: Text(
              'Flutter GridView Demo',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Draggable(
                data: Colors.orangeAccent,
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.grey,
                  child: Center(
                    child: Text('Box'),
                  ),
                ),
                onDraggableCanceled: (valocity, Offset) {},
                feedback: Container(
                  width: 150,
                  height: 150,
                  color: Colors.orange.withOpacity(0.5),
                  child: Center(
                    child: Text(
                      'Box...',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                ),
              ),
              DragTarget(onAccept: (Color color) {
                caughtColor = color;
              }, builder: (
                BuildContext context,
                List<dynamic> accepted,
                List<dynamic> rejected,
              ) {
                return Container(
                  width: 200,
                  height: 200,
                  color: accepted.isEmpty ? caughtColor : Colors.amberAccent,
                  child: Center(
                    child: Text('Drage Here'),
                  ),
                );
              })
            ],
          ),
        )
       );
  }
}