import 'package:dribble_clone_app/misc/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LargeText extends StatelessWidget {
  String text;
  double textSize;
  Color color;

  LargeText({
    Key? key,
    required this.text,
    this.textSize = 20.0,
    this.color = AppColors.blackColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        fontWeight: FontWeight.bold,
        fontSize: textSize,
        color: color,
      ),
    );
  }
}
