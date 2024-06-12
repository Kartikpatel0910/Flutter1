import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

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
      this.bgColor = Colors.orange,
      required this.width});
  final String outlname;
  final Color otColor;
  final Color bgColor;
  final double width;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            child: OutlinedButton(
      child: Text(
        outlname,
        style: TextStyle(
          color: otColor,
        ),
      ),
      style: OutlinedButton.styleFrom(side: BorderSide(width: width)),
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
              background: Image.network(
                imageurl,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class bsdt extends StatelessWidget {
  const bsdt({
    super.key,
    required this.btnName,
    required this.bgColor,
    this.elevation,
    required this.onpressed,
    required this.closebtn,
    required this.hight, 
    required this.onback,
  });

  final btnName;
  final elevation;
  final Color bgColor;
  final VoidCallback onpressed;
  final VoidCallback onback;
  final String closebtn;
  final double hight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            onpressed();
            {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: hight,
                      child: Center(
                        child: ElevatedButton(
                            onPressed: () {
                              onback();
                            },
                            child: Text(closebtn)),
                      ),
                    );
                  });
            }
          },
          child: Text(btnName),
          style: ElevatedButton.styleFrom(side: BorderSide(color: bgColor)),
        ),
      ),
    );
  }
}

class wrat extends StatelessWidget {
  const wrat(
      {super.key,
      required this.space,
      required this.runspace,
      required this.alignment,
      required this.direction,
      required this.hight,
      required this.width,
      required this.color});

  final double space;
  final double runspace;
  final alignment;
  final direction;
  final double hight;
  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        spacing: space,
        runSpacing: runspace,
        children: [
          Container(
            height: hight,
            width: width,
            color: color,
          ),
          Container(
            height: hight,
            width: width,
            color: color,
          ),
          Container(
            height: hight,
            width: width,
            color: color,
          ),
          Container(
            height: hight,
            width: width,
            color: color,
          ),
        ],
      ),
    );
  }
}

class stck extends StatelessWidget {
  const stck({super.key,
  
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold()
  }
}