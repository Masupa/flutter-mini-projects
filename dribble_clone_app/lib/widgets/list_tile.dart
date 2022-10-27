import 'package:flutter/material.dart';

import '../misc/colors.dart';
import 'icon_container.dart';
import 'large_text.dart';
import 'small_text.dart';

class Tile extends StatelessWidget {
  // Attributes
  final IconData icon;
  final Color containerColor;
  final String title;
  final String subtitle;

  // Constructor
  const Tile({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.containerColor = AppColors.containerColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // Attributes
      padding: const EdgeInsets.symmetric(vertical: 15),
      margin: const EdgeInsets.only(bottom: 20),

      // Container Child
      child: ListTile(
        leading: IconContainer(
          width: 60,
          height: 60,
          icon: icon,
          containerColor: containerColor,
        ),
        // Title & Subtitle
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LargeText(text: title, textSize: 17.5),
            const SizedBox(height: 10),
            SmallText(text: subtitle),
          ],
        ),
        trailing: const Icon(Icons.more_horiz),
      ),
      // Container decoration
      decoration: BoxDecoration(
        color: const Color(0xFFf2f8ff),
        borderRadius: BorderRadius.circular(25.0),
      ),
    );
  }
}
