import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Checkbox Example',
            style: TextStyle(color: Colors.limeAccent),
          ),
          backgroundColor: Colors.brown,
        ),
        body: CheckboxWidget(),
      ),
    );
  }
}

class CheckboxWidget extends StatefulWidget {
  @override
  _CheckboxWidgetState createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool ch = false;
  bool cr = false;
  bool ca = false;
  bool ho = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 500,
        width: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Checkbox(
                  value: ch,
                  onChanged: (bool? value) {
                    setState(() {
                      ch = value!;
                    });
                  },
                ),
                Text('Chess'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: cr,
                  onChanged: (bool? value) {
                    setState(() {
                      cr = value!;
                    });
                  },
                ),
                Text('Cricket'),
              ],
            ),
            Row(children: [
              Checkbox(
                value: ca,
                onChanged: (bool? value) {
                  setState(() {
                    ca = value!;
                  });
                },
              ),
              Text('Carrom'),
            ]),
            Row(
              children: [
                Checkbox(
                  value: ho,
                  onChanged: (bool? value) {
                    setState(() {
                      ho = value!;
                    });
                  },
                ),
                Text("Hockey")
              ],
            )
          ],
        ),
      ),
    );
  }
}