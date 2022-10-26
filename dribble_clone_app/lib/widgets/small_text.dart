import 'package:dribble_clone_app/misc/colors.dart';
import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  String text;
  double textSize;
  bool isBold;
  Color color;
  SmallText({
    Key? key,
    required this.text,
    this.textSize = 15.0,
    this.isBold = false,
    this.color = AppColors.blackColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: isBold ? FontWeight.w500 : FontWeight.normal,
          fontSize: textSize,
          color: color),
    );
  }
}
