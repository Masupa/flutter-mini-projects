import 'package:flutter/material.dart';

import '../misc/colors.dart';

class LargeText extends StatelessWidget {
  final String text;
  final double textSize;

  // Constructor
  const LargeText({
    Key? key,
    required this.text,
    this.textSize = 55,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // style
      style: TextStyle(
        color: AppColors.primaryTextColor,
        fontSize: textSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
