import 'package:flutter/gestures.dart';
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
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          floating: false,
          expandedHeight: 160,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('Flutter Sliver AppBar'),
            background: Image.network(
              'https://images.pexels.com/photos/4014919/pexels-photo-4014919.jpeg?cs=srgb&dl=pexels-shvetsa-4014919.jpg&fm=jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate((BuildContext, int index) {
          return ListTile(
            title: Text('Item ${1 + index}'),
          );
        }, childCount: 20))
      ],
    ));
  }
}
