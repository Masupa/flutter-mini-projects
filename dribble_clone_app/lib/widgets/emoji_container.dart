import 'package:flutter/material.dart';
import 'package:dribble_clone_app/misc/colors.dart';

class EmojiContainer extends StatelessWidget {
  final String emojiText;
  final double width;
  final double height;
  final Color containerColor;
  const EmojiContainer(
      {Key? key,
      required this.emojiText,
      this.width = 50,
      this.height = 50,
      this.containerColor = AppColors.containerColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: containerColor,
      ),
      child: Text(
        emojiText,
        style: const TextStyle(fontSize: 30),
      ),
    );
  }
}
