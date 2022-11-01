import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:dribble_clone_app/misc/colors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20.0, right: 12.5),
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.containerColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: TextFormField(
        decoration: const InputDecoration(
            icon: Icon(
              Iconsax.search_normal_1,
              color: AppColors.whiteColor,
              size: 22.5,
            ),
            hintText: 'Search',
            border: InputBorder.none,
            iconColor: AppColors.whiteColor,
            hintStyle: TextStyle(color: AppColors.whiteColor)),
      ),
    );
  }
}
