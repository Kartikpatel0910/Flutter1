import 'package:flutter/material.dart';
import 'package:rudra_it_hub/utils/constants.dart';

class HsAnswerCard extends StatelessWidget {
  final String option;
  final bool isTrue;

  const HsAnswerCard({super.key, required this.option ,required this.isTrue});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.01 / 2),
      child: Text(
        option,
        style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04 ,color: isTrue  ? purpleColor  : blackColor),
      ),
    );
  }
}
