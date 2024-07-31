import 'package:flutter/material.dart';

class OptionTile extends StatelessWidget {
  final String option;
  final String answer;
  final Color? color;
  final VoidCallback onTap;

  const OptionTile({
    super.key,
    required this.option,
    required this.answer,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4.0),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: Colors.black),
        ),
        child: Text(
          '$option: $answer',
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}