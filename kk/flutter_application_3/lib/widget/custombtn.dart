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
        style: TextStyle(color: otColor,),
      ),
      style: OutlinedButton.styleFrom(
        side: BorderSide()
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

class swit extends StatelessWidget {
  const swit({
    super.key,
    required this.otColor,
    required this.onChanged,
    required this.value,
    this.bgColor = Colors.orange,
  });
  final Color otColor;
  final Color bgColor;
  final ValueChanged<bool> onChanged;
  final bool value;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            child: Switch(
                // value: asa,
                value: value,
                onChanged: onChanged)));
  }
}

class sliv extends StatelessWidget {
  final String title;
  final bool pinned;
  final bool floating;
  final double expandhieght;
  final String imageurl;

  const sliv(
      {super.key,
      required this.title,
      required this.pinned,
      required this.floating,
      this.expandhieght = 200,
      required this.imageurl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: pinned,
            floating: floating,
            expandedHeight: expandhieght,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(title),
              background: Image.network(imageurl,fit: BoxFit.cover,),
            ),
          )
        ],
      ),
    );
  }
}


class btmshit extends StatelessWidget {
  const btmshit({super.key,
  re this.btnName;
  });

final btnName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: onPressed, child: child),
      ),
    )
  }
}