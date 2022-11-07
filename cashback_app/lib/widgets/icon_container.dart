import 'package:cashback_app/misc/colors.dart';
import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  final IconData icon;
  const IconContainer({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // properties
      width: 75,
      height: 75,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AppColors.containerColor,
      ),

      // Icon child
      child: Icon(
        icon,
        color: AppColors.primaryTextColor,
      ),
    );
  }
}
