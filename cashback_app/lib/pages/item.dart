// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:cashback_app/misc/colors.dart';
import 'package:cashback_app/models/store_model.dart';
import 'package:cashback_app/widgets/large_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/dynamic_app_bar.dart';
import '../widgets/item_size_container.dart';
import '../widgets/small_text.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              currentPage: "item",
            ),
          ),

          // ignore: todo
          // TODO: Find appropriate container name
          Expanded(
            child: Stack(
              children: [
                Container(
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Item Name | Description
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              LargeText(text: "Nike Metcon 8", textSize: 30),
                              SizedBox(height: 5.0),
                              SmallText(
                                text: "Men's Training Shoes",
                                textSize: 20,
                                textColor: AppColors.blueTextColor,
                              )
                            ],
                          ),
                        ),

                        // Item Container | Size
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Item Container
                              Container(
                                width: 280,
                                height: 300,
                                decoration: BoxDecoration(
                                  color: AppColors.greyContainerColor,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                // ignore: todo
                                // TODO: Later: Insert dynamic image;
                                // passed through stores when clicked
                                child: Image.asset(
                                  "assets/images/nike_one.png",
                                  fit: BoxFit.contain,
                                ),
                              ),

                              // Size Containers
                              Padding(
                                padding: const EdgeInsets.only(left: 12.5),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: const [
                                    ItemSizeContainer(
                                      itemSize: 3.5,
                                    ),
                                    SizedBox(height: 13.3),
                                    ItemSizeContainer(
                                      itemSize: 4,
                                    ),
                                    SizedBox(height: 13.3),
                                    ItemSizeContainer(
                                      itemSize: 4.5,
                                    ),
                                    SizedBox(height: 13.3),
                                    ItemSizeContainer(
                                      itemSize: 5,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),

                        // Buy Button
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(top: 20, bottom: 35),
                            width: double.infinity,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Consumer<StoreModel>(
                              builder: (context, value, child) => SmallText(
                                text: "Buy for \$${value.itemPrice}",
                                textColor: AppColors.mainColor,
                                textSize: 30,
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
