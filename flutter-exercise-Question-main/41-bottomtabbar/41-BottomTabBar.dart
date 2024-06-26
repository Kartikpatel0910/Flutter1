
import 'package:bottomtabbar1/second.dart';
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
      home: btb(),
    );
  }
}

class btb extends StatefulWidget {
  const btb({super.key});

  @override
  State<btb> createState() => _btbState();
}

class _btbState extends State<btb> {
  var a = [Home(),Search(),Profile()];
  int selectitem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottam Tab Bar Example"),backgroundColor: Colors.orange,),

      body: Center(
        child: a[selectitem]
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.red,),
          label: "Home",
          ),
           BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.red,),
          label: "Search",
          ),
           BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.red,),
          label: "Profile",
          ),  
      ],
      currentIndex: selectitem,
      onTap: (value){
        setState(() {
          selectitem = value;
        });
      },
      ),
    );
  }
}

Second.dart

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Home Page",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
      ),
    );
  }
}

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("Search Screen",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
          Icon(Icons.search,size: 25,),
          ],
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Profile Page",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
      ),
    );
  }
}
