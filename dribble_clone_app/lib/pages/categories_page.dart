import 'package:dribble_clone_app/misc/colors.dart';
import 'package:dribble_clone_app/widgets/category_container.dart';
import 'package:dribble_clone_app/widgets/large_text.dart';
import 'package:dribble_clone_app/widgets/list_tile.dart';
import 'package:dribble_clone_app/widgets/main_app_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/search_bar.dart';
import '../widgets/small_text.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

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

          // Categories | Consultants Section
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 35),
              padding: const EdgeInsets.only(left: 30, right: 30, top: 35),
              decoration: const BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  // Category Header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LargeText(
                        text: 'Category',
                        color: AppColors.blackColor,
                        textSize: 15.5,
                      ),
                      const Icon(Icons.more_horiz,
                          color: AppColors.sectionDotsColor)
                    ],
                  ),
                  const SizedBox(height: 25),

                  // CATEGORY SECTION
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          CategoriesContainer(
                            categoryName: 'Relationships',
                            categoryColors: [Color(0xFFad76fe), Colors.white],
                          ),
                          CategoriesContainer(
                            categoryName: 'Career',
                            categoryColors: [Color(0xFF38a4e2), Colors.white],
                          ),
                        ],
                      ),
                      const SizedBox(height: 17.5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          CategoriesContainer(
                            categoryName: 'Education',
                            categoryColors: [Color(0xFFe56e3c), Colors.white],
                          ),
                          CategoriesContainer(
                            categoryName: 'Other',
                            categoryColors: [Color(0xFFf55b7c), Colors.white],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),

                  // Consultants
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        LargeText(
                          text: 'Consultant',
                          color: AppColors.blackColor,
                          textSize: 15.5,
                        ),
                        const Icon(Icons.more_horiz,
                            color: AppColors.sectionDotsColor)
                      ],
                    ),
                  ),

                  // Consultants ListView
                  // ignore: todo
                  // TODO: Improve "imageAssetName" to pass different images
                  Expanded(
                    child: ListView(
                      children: const [
                        ImageTile(
                          imageAssetName: 'person1',
                          title: 'Bobby Singer',
                          subtitle: 'Education',
                        ),
                        ImageTile(
                          imageAssetName: 'person1',
                          title: 'John Doe',
                          subtitle: 'Education',
                        ),
                        ImageTile(
                          imageAssetName: 'person1',
                          title: 'Pearl Thusi',
                          subtitle: 'Education',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
