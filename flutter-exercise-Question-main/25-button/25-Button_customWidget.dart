import 'package:flutter/material.dart';

class custom_btn extends StatelessWidget {
  const custom_btn(
      {super.key,
      required this.tname,
      required this.tColor,
      required this.onPressed,
      required this.bgColor});

  final String tname;
  final Color tColor;
  final Color bgColor;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            child: ElevatedButton(
      onPressed: () {
        onPressed();
      },
      child: Text(
        tname,
        style: TextStyle(color: tColor),
      ),
      style: ElevatedButton.styleFrom(backgroundColor: bgColor),
    )));
  }
}

class txtbtn extends StatelessWidget {
  const txtbtn(
      {super.key,
      required this.btname,
      required this.btColor,
      required this.onPressed,
      this.bgColor = Colors.orange});
  final String btname;
  final Color btColor;
  final Color bgColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            child: TextButton(
      child: Text(
        btname,
        style: TextStyle(color: btColor),
      ),
      onPressed: () {
        onPressed();
      },
    )));
  }
}

class outlbtn extends StatelessWidget {
  const outlbtn(
      {super.key,
      required this.outlname,
      required this.otColor,
      required this.onPressed,
      this.bgColor = Colors.orange});
  final String outlname;
  final Color otColor;
  final Color bgColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            child: OutlinedButton(
      child: Text(
        outlname,
        style: TextStyle(color: otColor),
      ),
      onPressed: () {
        onPressed();
      },
    )));
  }
}

class iconbtn extends StatelessWidget {
  const iconbtn(
      {super.key,
      required this.icons,
      required this.icColor,
      required this.onPressed,
      this.bgColor = Colors.orange});
  final IconData icons;
  final Color icColor;
  final Color bgColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            child: IconButton(
      icon: Icon(icons),
      onPressed: () {
        onPressed();
      },
    )));
  }
}

class ftbtn extends StatelessWidget {
  const ftbtn(
      {super.key,
      required this.flotbtname,
      required this.otColor,
      required this.onPressed,
      this.bgColor = Colors.orange});
  final String flotbtname;
  final Color otColor;
  final Color bgColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            child: FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: onPressed,
    )));
  }
}