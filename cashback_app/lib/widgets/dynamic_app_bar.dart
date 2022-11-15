import 'package:flutter/material.dart';

import 'icon_container.dart';

class CustomAppBar extends StatelessWidget {
  final String currentPage;
  final IconData icon;

  const CustomAppBar({
    Key? key,
    this.currentPage = "home",
    required this.icon,
  }) : super(key: key);

  Widget getAppBar() {
    if (currentPage == "store") {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const IconContainer(
            icon: Icons.arrow_back,
            navRoute: "/",
          ),
          IconContainer(
            icon: icon,
            navRoute: "/cart_page",
          ),
        ],
      );
    } else if (currentPage == "item") {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const IconContainer(
            icon: Icons.arrow_back,
            navRoute: "/store_page",
          ),
          IconContainer(
            icon: icon,
            navRoute: "/cart_page",
          ),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconContainer(
            icon: icon,
            navRoute: "/",
          )
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return getAppBar();
  }
}
