import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppLargeText extends StatelessWidget {
  final String text;
  double size;
  Color color;

  AppLargeText({
    Key? key,
    required this.text,
    this.size = 30,
    this.color = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
