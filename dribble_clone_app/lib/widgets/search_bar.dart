import 'package:dribble_clone_app/misc/colors.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 12.5, right: 12.5),
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.containerColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: TextFormField(
        decoration: const InputDecoration(
            icon: Icon(Icons.search, color: AppColors.whiteColor),
            hintText: 'Search',
            border: InputBorder.none,
            iconColor: AppColors.whiteColor,
            hintStyle: TextStyle(color: AppColors.whiteColor)),
      ),
    );
  }
}
