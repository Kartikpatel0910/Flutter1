// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Sdk(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class Sdk extends StatefulWidget {
//   const Sdk({super.key});

//   @override
//   State<Sdk> createState() => _SdkState();
// }

// class _SdkState extends State<Sdk> {
//   Color caughtColor = Colors.red;
//   double opacitylevel = 1.0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.grey.shade200,
//           title: Center(
//             child: Text(
//               'Flutter GridView Demo',
//               style: TextStyle(
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 30.0,
//               ),
//             ),
//           ),
//         ),
//         body: SizedBox(
//           width: double.infinity,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Draggable(
//                 data: Colors.orangeAccent,
//                 child: Container(
//                   width: 200,
//                   height: 200,
//                   color: Colors.grey,
//                   child: Center(
//                     child: Text('Box'),
//                   ),
//                 ),
//                 onDraggableCanceled: (valocity, Offset) {},
//                 feedback: Container(
//                   width: 150,
//                   height: 150,
//                   color: Colors.orange.withOpacity(0.5),
//                   child: Center(
//                     child: Text(
//                       'Box...',
//                       style: TextStyle(color: Colors.black, fontSize: 18),
//                     ),
//                   ),
//                 ),
//               ),
//               DragTarget(onAccept: (Color color) {
//                 caughtColor = color;
//               }, builder: (
//                 BuildContext context,
//                 List<dynamic> accepted,
//                 List<dynamic> rejected,
//               ) {
//                 return Container(
//                   width: 200,
//                   height: 200,
//                   color: accepted.isEmpty ? caughtColor : Colors.amberAccent,
//                   child: Center(
//                     child: Text('Drage Here'),
//                   ),
//                 );
//               })
//             ],
//           ),
//         )
// GridView.extent(
//   primary: false,
//   padding: const EdgeInsets.all(16),
//   crossAxisSpacing: 10,
//   mainAxisSpacing: 10,
//   maxCrossAxisExtent: 200.0,
//   children: <Widget>[
//     Container(
//       padding: const EdgeInsets.all(8),
//       child: const Text('First', style: TextStyle(fontSize: 20)),
//       color: Colors.yellow,
//     ),
//     Container(
//       padding: const EdgeInsets.all(8),
//       child: const Text('Second', style: TextStyle(fontSize: 20)),
//       color: Colors.blue,
//     ),
//     Container(
//       padding: const EdgeInsets.all(8),
//       child: const Text('Third', style: TextStyle(fontSize: 20)),
//       color: Colors.blue,
//     ),
//     Container(
//       padding: const EdgeInsets.all(8),
//       child: const Text('Four', style: TextStyle(fontSize: 20)),
//       color: Colors.yellow,
//     ),
//     Container(
//       padding: const EdgeInsets.all(8),
//       child: const Text('Fifth', style: TextStyle(fontSize: 20)),
//       color: Colors.yellow,
//     ),
//     Container(
//       padding: const EdgeInsets.all(8),
//       child: const Text('Six', style: TextStyle(fontSize: 20)),
//       color: Colors.blue,
//     ),
//   ],
// ),

// GridView.count(
//   crossAxisCount: 4,
//   crossAxisSpacing: 10.0,
//   mainAxisSpacing: 10.0,
//   shrinkWrap: true,
//   children: List.generate(
//     20,
//     (index) {
//       return Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: Container(
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: NetworkImage(
//                   'https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_640.jpg'),
//               fit: BoxFit.cover,
//             ),
//             borderRadius: BorderRadius.all(
//               Radius.circular(20.0),
//             ),
//           ),
//         ),
//       );
//     },
//   ),
// ),
// GridView.builder(
//     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//       crossAxisCount: 4,
//       crossAxisSpacing: 2.0,
//       mainAxisSpacing: 2.0,
//     ),
//     itemBuilder: (BuildContext context, int index) {
//       return Image.network(
//           "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_640.jpg");
//     })
//         GridView.count(
//             crossAxisCount: 2,
//             mainAxisSpacing: 10,
//             children: List.generate(20, (index) {
//               return Padding(
//                 padding: EdgeInsets.all(10),
//                 child: Container(
//                   decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: NetworkImage(
//                             'https://pixabay.com/images/search/garden/'),
//                         fit: BoxFit.cover,
//                       ),
//                       borderRadius: BorderRadius.all(Radius.circular(10))),
//                 ),
//               );
//             }))
//         );
//   }
// }