import 'package:dribble_clone_app/misc/colors.dart';
import 'package:dribble_clone_app/widgets/icon_container.dart';
import 'package:dribble_clone_app/widgets/large_text.dart';
import 'package:dribble_clone_app/widgets/list_tile.dart';
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
      body: Column(
        children: [
          // App Bar
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 70),
            child: Row(
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
          ),

          // Search Bar
          const Padding(
            padding: EdgeInsets.only(left: 30, right: 30, top: 35),
            child: SearchBar(),
          ),

          // Expressions Sections
          Padding(
            padding:
                const EdgeInsets.only(left: 30, right: 30, top: 35, bottom: 30),
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
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
              decoration: const BoxDecoration(
                color: AppColors.whiteColor,
              ),
              child: Column(
                children: [
                  // Exercises Header
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmallText(
                          text: 'Exercises',
                          color: AppColors.blackColor,
                          isBold: true,
                          textSize: 15.5,
                        ),
                        const Icon(Icons.more_horiz,
                            color: AppColors.blackColor)
                      ],
                    ),
                  ),

                  // Exercises
                  Expanded(
                    child: ListView(
                      children: const [
                        Tile(),
                        Tile(),
                        Tile(),
                        Tile(),
                        Tile(),
                        Tile(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ExercisesListView extends StatelessWidget {
  const ExercisesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Exercises'),
    );
  }
}
