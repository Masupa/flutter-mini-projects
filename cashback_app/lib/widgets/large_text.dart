import 'package:flutter/material.dart';

import '../misc/colors.dart';

class LargeText extends StatelessWidget {
  final String text;
  final double textSize;
  final Color textColor;

  // Constructor
  const LargeText({
    Key? key,
    required this.text,
    this.textSize = 55,
    this.textColor = AppColors.primaryTextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // style
      style: TextStyle(
        color: textColor,
        fontSize: textSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
