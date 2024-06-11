import 'package:flutter/material.dart';

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