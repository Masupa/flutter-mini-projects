import 'package:dribble_clone_app/misc/colors.dart';
import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  IconData icon;
  double width;
  double height;
  IconContainer({
    Key? key,
    required this.icon,
    this.width = 50,
    this.height = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: AppColors.containerColor,
      ),
      child: Icon(
        icon,
        color: AppColors.whiteColor,
      ),
    );
  }
}
