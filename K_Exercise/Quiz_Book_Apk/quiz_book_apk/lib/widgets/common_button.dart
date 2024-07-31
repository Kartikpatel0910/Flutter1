import 'package:flutter/material.dart';
import 'package:quiz_book_apk/utils/constant.dart';

class custom_button extends StatelessWidget {
  const custom_button({
    super.key, 
    required this.onpress, 
    required this.title, 
    required this.isfullwidth,

  });

  final VoidCallback onpress;
  final String title;
  final bool isfullwidth;
  @override
  Widget build(BuildContext context) {
    return InkWell( 
      onTap: (){
        onpress();
      }, 
      child: Container(
        height: 50,
        width: double.infinity,
        color: purple,
        child: Center(child: Text(title,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),))));
  }
}
