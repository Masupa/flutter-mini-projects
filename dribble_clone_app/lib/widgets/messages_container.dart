import 'package:dribble_clone_app/misc/colors.dart';
import 'package:dribble_clone_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

class MessagesContainer extends StatelessWidget {
  final String message;
  final bool isMyText;
  const MessagesContainer({
    Key? key,
    required this.message,
    required this.isMyText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      padding: const EdgeInsets.only(left: 20, right: 20),
      height: 70,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isMyText ? AppColors.secondaryColor : AppColors.mainColor,
        borderRadius: isMyText
            ? const BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
                topLeft: Radius.circular(25),
              )
            : const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                topRight: Radius.circular(25),
              ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SmallText(
            text: message,
            isBold: true,
            textSize: 15,
            color: isMyText ? AppColors.blackColor : AppColors.whiteColor,
          ),
          const SizedBox(width: 5.0),
          SmallText(
            text: '11:04',
            color: isMyText ? AppColors.blackColor : AppColors.whiteColor,
          )
        ],
      ),
    );
  }
}
