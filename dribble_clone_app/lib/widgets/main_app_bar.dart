import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:dribble_clone_app/widgets/small_text.dart';

import '../misc/colors.dart';
import 'icon_container.dart';
import 'large_text.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 70),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Name | Today's Date
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LargeText(
                text: 'Hi, Jared',
                color: AppColors.whiteColor,
              ),
              const SizedBox(height: 7.5),
              SmallText(
                text: '23 Jan, 2021',
                color: AppColors.whiteColor,
              ),
            ],
          ),
          // Notification Icon
          const IconContainer(icon: Iconsax.notification1)
        ],
      ),
    );
  }
}
