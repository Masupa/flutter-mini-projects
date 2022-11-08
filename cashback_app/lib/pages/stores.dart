import 'package:cashback_app/widgets/dynamic_app_bar.dart';
import 'package:cashback_app/widgets/large_text.dart';
import 'package:cashback_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

import '../misc/colors.dart';
import '../widgets/shop_item_container.dart';
import '../widgets/tags_container.dart';

class StoresPage extends StatefulWidget {
  const StoresPage({Key? key}) : super(key: key);

  @override
  State<StoresPage> createState() => _StoresPageState();
}

class _StoresPageState extends State<StoresPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Properties
      backgroundColor: AppColors.mainColor,
      body: Column(
        children: [
          // App Bar
          const Padding(
            padding: EdgeInsets.only(left: 25, right: 25, top: 70, bottom: 25),
            child: CustomAppBar(
              // ignore: todo
              // TODO: Make this a back button
              icon: Icons.shopping_bag,
              isHome: false,
            ),
          ),

          // TODO: Find appropriate container
          Expanded(
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 35),
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.containerColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 55),
                    child: Column(
                      children: [
                        // Nike Offers | Tags
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Nike Offers
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  LargeText(text: "Nike", textSize: 30),
                                  SizedBox(height: 5.0),
                                  SmallText(
                                    text: "136 Offers",
                                    textSize: 20,
                                    textColor: AppColors.blueTextColor,
                                  )
                                ],
                              ),

                              // Tags
                              const TagsContainer(
                                firstTagText: "Clothes",
                                secondTagText: "Sports",
                              ),
                            ],
                          ),
                        ),

                        // Store Items
                        // ignore: todo
                        // TODO: Add more images to the items
                        Padding(
                          padding: const EdgeInsets.only(top: 35),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  ShopItemContainer(
                                    itemImageName: "nike",
                                  ),
                                  ShopItemContainer(
                                    itemImageName: "nike",
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  ShopItemContainer(
                                    itemImageName: "nike",
                                  ),
                                  ShopItemContainer(
                                    itemImageName: "nike",
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        // Let's Go Button
                        // ignore: todo
                        // TODO: Make clickable button
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 35),
                            child: Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.only(top: 20),
                              width: double.infinity,
                              height: 100,
                              decoration: BoxDecoration(
                                color: AppColors.selectColorLight,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: const LargeText(
                                text: "Let's go shopping",
                                textSize: 25,
                                textColor: Colors.black87,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                // Stacked Nike Logo
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(30),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/nike_logo.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}