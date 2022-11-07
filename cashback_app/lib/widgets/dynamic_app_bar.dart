import 'package:flutter/material.dart';

import 'icon_container.dart';

class CustomAppBar extends StatelessWidget {
  final bool isHome;
  final IconData icon;
  const CustomAppBar({
    Key? key,
    this.isHome = true,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isHome
        ? Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [IconContainer(icon: icon)],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const IconContainer(icon: Icons.arrow_back),
              IconContainer(icon: icon),
            ],
          );
  }
}
