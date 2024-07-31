import 'package:flutter/material.dart';
import 'package:quiz_book_apk/view/history_page.dart';
import 'package:quiz_book_apk/view/home_page.dart';
import 'package:quiz_book_apk/view/profile_page.dart';

class BottomTabbar extends StatefulWidget {
  const BottomTabbar({super.key});

  @override
  State<BottomTabbar> createState() => _BottomTabbarState();
}

class _BottomTabbarState extends State<BottomTabbar> {
  var a = [HomePage(), HistoryPage(), ProfilePage()];
  int selectitem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: a[selectitem]),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history,
            ),
            label: "History",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Profile",
          ),
        ],
        currentIndex: selectitem,
        onTap: (value) {
          setState(() {
            selectitem = value;
          });
        },
      ),
    );
  }
}
