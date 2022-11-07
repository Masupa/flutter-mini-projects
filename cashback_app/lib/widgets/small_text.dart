import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String text;
  final double textSize;

  // Constructor
  const SmallText({Key? key, required this.text, this.textSize = 22.5})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: const Color.fromARGB(126, 253, 255, 255),
        fontSize: textSize,
      ),
    );
  }
}
