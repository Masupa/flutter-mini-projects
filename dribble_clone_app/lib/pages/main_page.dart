import 'package:dribble_clone_app/misc/colors.dart';
import 'package:dribble_clone_app/pages/categories_page.dart';
import 'package:dribble_clone_app/pages/chat_page.dart';
import 'package:dribble_clone_app/pages/home_page.dart';
import 'package:dribble_clone_app/pages/profile_page.dart';
import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // NavigationIndexCounter
  int navCurrentIndex = 0;

  // App Pages
  List pages = const [
    HomePage(),
    CategoriesPage(),
    ChatPage(),
    ProfilePage(),
  ];

  // Function called when a NavigationBarItem is tapped
  void updateNavCurrentIndex(int index) {
    setState(() {
      navCurrentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Body
      body: pages[navCurrentIndex],

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        iconSize: 27.5,
        type: BottomNavigationBarType.fixed,
        onTap: updateNavCurrentIndex,
        currentIndex: navCurrentIndex,
        selectedItemColor: AppColors.mainColor,
        unselectedItemColor: AppColors.secondaryColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: AppColors.whiteColor,

        // NavBarItems
        items: const [
          BottomNavigationBarItem(icon: Icon(Iconsax.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Iconsax.menu), label: 'Category'),
          BottomNavigationBarItem(icon: Icon(Iconsax.message), label: 'Inbox'),
          BottomNavigationBarItem(icon: Icon(Iconsax.user), label: 'Profile')
        ],
      ),
    );
  }
}
