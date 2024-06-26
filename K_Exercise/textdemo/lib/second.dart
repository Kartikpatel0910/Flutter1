// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(
//             'Checkbox Example',
//             style: TextStyle(color: Colors.limeAccent),
//           ),
//           backgroundColor: Colors.brown,
//         ),
//         body: CheckboxWidget(),
//       ),
//     );
//   }
// }

// class CheckboxWidget extends StatefulWidget {
//   @override
//   _CheckboxWidgetState createState() => _CheckboxWidgetState();
// }

// class _CheckboxWidgetState extends State<CheckboxWidget> {
//   bool ch = false;
//   bool cr = false;
//   bool ca = false;
//   bool ho = false;
//   String? ck;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(),
//         body: Center(
//           child: Builder(builder: (context) {
//             return Center(
//               child: ElevatedButton(
//                   onPressed: () {
//                     final msg = SnackBar(
//                         content: Text('This is Snackbar'),
//                         action: SnackBarAction(
//                             label: 'Close',
//                             onPressed: () {
//                               Navigator.pop(main);
//                             }));
//                     ScaffoldMessenger.of(context).showSnackBar(msg);
//                   },
//                   child: Text("Button")),
//             );
//           }),
//         ));
//   }
// }
