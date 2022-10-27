import 'package:dribble_clone_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

import '../misc/colors.dart';

class CategoriesContainer extends StatelessWidget {
  // Attributes
  final String categoryName;
  final List<Color> categoryColors;

  // Constructor
  const CategoriesContainer({
    Key? key,
    required this.categoryName,
    required this.categoryColors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 90,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        gradient: RadialGradient(
          colors: categoryColors,
          radius: 4.5,
        ),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(115, 0, 0, 0),
            offset: Offset.zero,
            blurRadius: 0.05,
            spreadRadius: 0.0,
          )
        ],
      ),
      child: SmallText(
        text: categoryName,
        color: AppColors.whiteColor,
        isBold: true,
      ),
    );
  }
}
