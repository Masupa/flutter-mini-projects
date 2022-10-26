import 'package:dribble_clone_app/misc/colors.dart';
import 'package:flutter/material.dart';

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
    Text('Home Page'),
    Text('Categories Page'),
    Text('Chat Page'),
    Text('Profile Page')
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
      body: Center(
        child: pages[navCurrentIndex],
      ),

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

        // NavBarItems
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.apps), label: 'Category'),
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: 'Inbox'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
        ],
      ),
    );
  }
}
