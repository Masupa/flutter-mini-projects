import 'package:flutter/material.dart';
import 'package:cashback_app/widgets/dynamic_app_bar.dart';
import 'package:cashback_app/widgets/large_text.dart';
import 'package:cashback_app/widgets/small_text.dart';

import 'package:cashback_app/misc/colors.dart';
import 'package:slide_to_act/slide_to_act.dart';

import '../widgets/cashback_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // Account balance
  final double accountBalanace = 7910.06;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Properties
      backgroundColor: AppColors.mainColor,

      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // AppBar
            const CustomAppBar(icon: Icons.home),

            // Total Balance
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 10, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SmallText(text: 'Total Balance'),
                  LargeText(
                      text:
                          '\$${accountBalanace.toString()[0]} ${accountBalanace.toString().substring(1)}')
                ],
              ),
            ),

            // Cashback Section
            Row(
              children: [
                Column(
                  children: const [
                    CashbackContainer(
                      amount: 62,
                      companyOwed: "Starbucks",
                      cashbackMessage: "Will be charged tomorrow",
                      amountTextColor: AppColors.blueTextColor,
                    ),
                    SizedBox(height: 5.0),
                    CashbackContainer(
                      amount: 62,
                      companyOwed: "Starbucks",
                      cashbackMessage: "Will be charged tomorrow",
                      amountTextColor: AppColors.blueTextColor,
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    // properties
                    margin: const EdgeInsets.only(left: 7.5),
                    height: 340,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.selectColorLight,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    //
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        LargeText(
                          text: "+ \$200",
                          textSize: 35,
                          textColor: AppColors.mainColor,
                        ),
                        SmallText(
                          text: "for",
                          textSize: 25,
                          textColor: AppColors.mainColor,
                        ),
                        SmallText(
                          text: "yesterday",
                          textSize: 25,
                          textColor: AppColors.mainColor,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),

            // Nike Added New Product
            // ignore: todo
            // TODO: find appropriate name for this
            // section and heights of this container to be responsive
            Container(
              // properties
              height: 150,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 20),
              padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
              decoration: BoxDecoration(
                color: AppColors.containerColor,
                borderRadius: BorderRadius.circular(30),
              ),
              // Text | Slider
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const LargeText(
                    text: "Nike Added New Products",
                    textSize: 20,
                  ),
                  const SizedBox(height: 15),
                  // ignore: todo
                  // TODO: Find nice icon for submitedIcon
                  SlideAction(
                    elevation: 0,
                    borderRadius: 30,
                    sliderRotate: false,
                    sliderButtonIcon: const Icon(
                      Icons.keyboard_double_arrow_right,
                    ),
                    outerColor: AppColors.greyContainerColor,
                    child: const SmallText(
                      text: "View Collection",
                      textSize: 17.5,
                    ),
                    onSubmit: () {},
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
