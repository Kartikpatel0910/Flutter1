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
          backgroundColor: Colors.pinkAccent,

          selectedFontSize: 15,
          iconSize: 30,
          type: BottomNavigationBarType.fixed,
          // currentIndex: 1,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.login),
              label: 'Login',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.discord),
              label: 'Discard',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.forward),
              label: 'Forward',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.save),
              label: 'Save',
            ),
          ],
        ),
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
                      color: Colors.blue,
                    ),
                    focusColor: Colors.blue,
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.blue,
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
                      color: Colors.blue,
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.blue,
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
                      color: Colors.blue,
                    ),
                    focusColor: Colors.blue,
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  child: Text(
                    'Enable',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(2))),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.pinkAccent,
            child: Text("Click"),
            onPressed: () {}),
      ),
    ),
  );
}
