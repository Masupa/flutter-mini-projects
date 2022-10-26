import 'package:dribble_clone_app/misc/colors.dart';
import 'package:dribble_clone_app/widgets/icon_container.dart';
import 'package:dribble_clone_app/widgets/large_text.dart';
import 'package:dribble_clone_app/widgets/search_bar.dart';
import 'package:dribble_clone_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // Expression Section | Items
  Column expressionItem(String text) {
    return Column(
      children: [
        IconContainer(
          icon: Icons.emoji_emotions,
          width: 70,
          height: 70,
        ),
        const SizedBox(height: 5.0),
        SmallText(
          text: text,
          color: AppColors.whiteColor,
          textSize: 12.5,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 70),
        child: Column(
          children: [
            // App Bar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Name | Today's Date
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LargeText(
                      text: 'Jared',
                      color: AppColors.whiteColor,
                    ),
                    const SizedBox(height: 7.5),
                    SmallText(
                      text: '23 Jan, 2021',
                      color: AppColors.whiteColor,
                    ),
                  ],
                ),
                // Bell Icon
                IconContainer(icon: Icons.notification_add)
              ],
            ),

            // Search Bar
            const Padding(
              padding: EdgeInsets.only(top: 35),
              child: SearchBar(),
            ),

            // Expressions Sections
            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SmallText(
                        text: 'How do you feel?',
                        color: AppColors.whiteColor,
                        isBold: true,
                        textSize: 15.5,
                      ),
                      const Icon(Icons.more_horiz, color: AppColors.whiteColor)
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      expressionItem('Badly'),
                      expressionItem('Fine'),
                      expressionItem('Well'),
                      expressionItem('Excellent'),
                    ],
                  )
                ],
              ),
            ),

            // Exercises Section
          ],
        ),
      ),
    );
  }
}
