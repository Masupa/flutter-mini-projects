import 'package:flutter/material.dart';

import '../misc/colors.dart';

class ShopItemContainer extends StatelessWidget {
  final String itemImageName;
  const ShopItemContainer({
    Key? key,
    required this.itemImageName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 150,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.greyContainerColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Image.asset(
        "assets/images/$itemImageName.png",
        fit: BoxFit.cover,
      ),
    );
  }
}
