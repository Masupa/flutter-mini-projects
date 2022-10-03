import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;

  ResponsiveButton({
    Key? key,
    this.isResponsive,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
          color: AppColors.mainColor,
          borderRadius: BorderRadius.circular(10.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ChevronRight(
              size: 12.5, color: const Color.fromARGB(71, 255, 255, 255)),
          ChevronRight(
              size: 15, color: const Color.fromARGB(132, 255, 255, 255)),
          ChevronRight(
              size: 17.5, color: const Color.fromARGB(211, 255, 255, 255)),
          ChevronRight(size: 20, color: Colors.white)
        ],
      ),
    );
  }
}

class ChevronRight extends StatelessWidget {
  double size;
  Color color;

  ChevronRight({
    Key? key,
    required this.size,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.chevron_right,
      color: color,
      size: size,
    );
  }
}
