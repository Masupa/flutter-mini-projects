import 'package:dribble_clone_app/misc/colors.dart';
import 'package:dribble_clone_app/widgets/large_text.dart';
import 'package:dribble_clone_app/widgets/list_tile.dart';
import 'package:dribble_clone_app/widgets/main_app_bar.dart';
import 'package:dribble_clone_app/widgets/search_bar.dart';
import 'package:dribble_clone_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';

import '../widgets/emoji_container.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  // Expression Section | Items
  Column expressionItem(String text, String emojiText) {
    return Column(
      children: [
        EmojiContainer(
          emojiText: emojiText,
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
          const MainAppBar(),

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
                    LargeText(
                      text: 'How do you feel?',
                      color: AppColors.whiteColor,
                      textSize: 15.0,
                    ),
                    const Icon(Icons.more_horiz, color: AppColors.whiteColor)
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    expressionItem('Badly', '😔'),
                    expressionItem('Fine', '😊'),
                    expressionItem('Well', '😆'),
                    expressionItem('Excellent', '😃'),
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
                        LargeText(
                          text: 'Exercises',
                          color: AppColors.blackColor,
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
                        Tile(
                          icon: Iconsax.lovely,
                          title: 'Speaking Skills',
                          subtitle: '16 Exercises',
                          containerColor: Color(0xFFf78557),
                        ),
                        Tile(
                          icon: Iconsax.user,
                          title: 'Reading Speed',
                          subtitle: '6 Exercises',
                        ),
                        Tile(
                          icon: Iconsax.user,
                          title: 'Speaking Skills',
                          subtitle: '16 Exercises',
                          containerColor: Color(0xFFf5597c),
                        )
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
