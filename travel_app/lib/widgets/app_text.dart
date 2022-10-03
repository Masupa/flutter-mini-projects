import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppText extends StatelessWidget {
  final String text;
  double size;
  Color color;

  AppText({
    Key? key,
    required this.text,
    this.size = 16,
    this.color = const Color.fromARGB(54, 75, 75, 75),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
      ),
    );
  }
}
