import 'package:flutter/material.dart';

import '../misc/colors.dart';
import 'icon_container.dart';
import 'large_text.dart';
import 'small_text.dart';

class IconTile extends StatelessWidget {
  // Attributes
  final IconData icon;
  final Color containerColor;
  final String title;
  final String subtitle;

  // Constructor
  const IconTile({
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
            LargeText(text: title, textSize: 15.0),
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

class ImageTile extends StatelessWidget {
  // Attributes
  final String imageAssetName;
  final Color containerColor;
  final String title;
  final String subtitle;

  // Constructor
  const ImageTile({
    Key? key,
    required this.imageAssetName,
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
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Image.asset(
            'assets/images/$imageAssetName.jpg',
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),

        // Title & Subtitle
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LargeText(text: title, textSize: 15.0),
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
