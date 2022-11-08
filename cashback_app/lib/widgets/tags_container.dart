import 'package:flutter/material.dart';

import '../misc/colors.dart';
import 'small_text.dart';

class TagsContainer extends StatelessWidget {
  final String firstTagText;
  final String secondTagText;

  // Constructor
  const TagsContainer({
    Key? key,
    required this.firstTagText,
    required this.secondTagText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // First Tag
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 30,
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
              decoration: BoxDecoration(
                color: AppColors.greyContainerColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: SmallText(text: '#$firstTagText', textSize: 15.0),
            ),
            const SizedBox(width: 40),
          ],
        ),
        const SizedBox(height: 15.0),

        // Second Tag
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 40),
            Container(
              height: 30,
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
              decoration: BoxDecoration(
                color: AppColors.greyContainerColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: SmallText(text: '#$secondTagText', textSize: 15.0),
            ),
          ],
        ),
      ],
    );
  }
}
