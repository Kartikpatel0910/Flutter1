// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: pdmo(),
//     );
//   }
// }

// class pdmo extends StatefulWidget {
//   const pdmo({super.key});

//   @override
//   State<pdmo> createState() => _pdmoState();
// }

// class _pdmoState extends State<pdmo> {
//   double val = 0.0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Animation Container Demo'),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.blue,
//               ),
//               child: Text('Change Padding'),
//               onPressed: () {
//                 setState(() {
//                   val = val == 0.0 ? 100.0 : 0.0;
//                 });
//               },
//             ),
//             Text('Paddig = $val'),
//             AnimatedPadding(
//               padding: EdgeInsets.all(val),
//               duration: Duration(seconds: 2),
//               curve: Curves.easeInOut,
//               child: Container(
//                 width: MediaQuery.of(context).size.width,
//                 height: MediaQuery.of(context).size.height / 4,
//                 color: Colors.blue,
//               ),
//             )
//           ],
//         ));
//   }
// }

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
      home: draw(),
    );
  }
}

class draw extends StatefulWidget {
  const draw({super.key});

  @override
  State<draw> createState() => _drawState();
}

class _drawState extends State<draw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("Home Screen"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.brown,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRect(
                    child: Image.network(
                      "https://cdn-icons-png.flaticon.com/512/149/149071.png",
                      height: 70,
                    ),
                  ),
                  Text(
                    "John Doe",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text("john.doe@example.com",
                      style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
