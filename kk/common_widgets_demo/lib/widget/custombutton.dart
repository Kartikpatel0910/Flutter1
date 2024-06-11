import 'package:flutter/material.dart';

class custombutton extends StatelessWidget {
  final String btnname;
  final Icon? icon;
  final Color? bgcolor;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  const custombutton({
    super.key,
    required this.btnname,
    this.bgcolor = Colors.lime,
    this.icon,
    this.textStyle,
    this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: bgcolor),
          onPressed: () {
            callback!();
          },
          child: icon != null
              ? Row(
                  children: [
                    icon!,
                    Text(
                      btnname,
                    )
                  ],
                )
              : Text(
                  btnname,
                  style: textStyle,
                )),
    );
  }
}
