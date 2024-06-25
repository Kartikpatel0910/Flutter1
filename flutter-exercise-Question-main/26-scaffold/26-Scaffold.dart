import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          
        appBar: AppBar(
           backgroundColor: Colors.blue,
          title: Text('Button'),
          
          actions: [
            IconButton(
              icon: Icon(Icons.home),
              iconSize: 35,
              color: Colors.orange,
             onPressed: () {},
            ),
          ],
        ),
        
        bottomNavigationBar: BottomNavigationBar(
          // backgroundColor: Colors.pinkAccent,
          // currentIndex: 1,
          items: [
            
          BottomNavigationBarItem(
            icon:Icon(Icons.home),
            label: 'Home', 
            
        ),
        BottomNavigationBarItem(
            icon:Icon(Icons.newspaper),
            label: 'News', 
        ),
        ],),
        
        drawer: Drawer(
          child: Column(
            children: [
             ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              // iconColor: Colors.amber,
              // textColor: Colors.amber,
             ),
             ListTile(
              title: Text("Login"),
              leading: Icon(Icons.login),
             ),
             ListTile(
              title: Text("Save"),
              leading: Icon(Icons.save),
             ),               
            ],
          ),  
        ),
        body: SizedBox(

          height: double.infinity,
          width: double.infinity,
          child: Padding(
                padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Enter Your username',
                       labelStyle: TextStyle(
                      color: Colors.black,
                      ),
                       focusColor: Colors.black,
                       border: OutlineInputBorder(),
                       enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                       focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.black),
                     ),
                      prefixIcon:Icon(
                         Icons.person,
                         color: Colors.black,
                      ),  
                      suffixIcon: Icon(
                         Icons.remove_red_eye,
                         color: Colors.orange,
                     ), 
          
                    ),
                  ),
                  SizedBox(height: 5),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter Your username',
                      labelStyle: TextStyle(
                      color: Colors.black,
                      ),
                    prefixIcon:Icon(
                         Icons.person,
                         color: Colors.black,
                      ), 
                    ),
                  ),
                  SizedBox(

                    height: 10,
                  ),
                  TextField(
                     decoration: const InputDecoration(
                      labelText: 'Enter a search term',
                       labelStyle: TextStyle(
                      color: Colors.black,
                      ),
                       focusColor: Colors.black,
                       border: OutlineInputBorder(),
                       enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                       focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.black),
                     ),
                      prefixIcon:Icon(
                         Icons.person,
                         color: Colors.black,
                      ),  
                  ),
                  
                  
          ),
          SizedBox(

            height: 10,
          ),
             ElevatedButton(
                child:Text('Enable',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2))),    
                ),
                onPressed: () {},
             ),
        
            //  FloatingActionButton( 
            //   backgroundColor: Colors.pinkAccent,
            //      child: Text(
            //       "Click"
            //      ),   
            //   onPressed: () {},
              
            //  ),
          
           ],
           
          ),
          
         ),
         
        ),
    ),
  ),
  
  );
}