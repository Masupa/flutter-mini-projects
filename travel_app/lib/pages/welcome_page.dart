import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:travel_app/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  // List of welcome images
  List images = [
    "welcome-one.jpg",
    "welcome-two.jpg",
    "welcome-three.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: images.length,
        scrollDirection: Axis.vertical,
        itemBuilder: ((context, index) {
          return Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/" + images[index]),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 100, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(text: "Trips"),
                      AppText(text: "Mountain", size: 30),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: 250,
                        child: AppText(
                          text:
                              "Mountain hikes give you an incredible sense of freedom along with endurance tests",
                          size: 14,
                        ),
                      ),
                      const SizedBox(height: 24),
                      ResponsiveButton(width: 100)
                    ],
                  ),

                  // Page Indicator Dots
                  PageDots(
                    images: images,
                    pageIndex: index,
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

class PageDots extends StatelessWidget {
  final List images;
  int pageIndex;

  PageDots({
    Key? key,
    required this.images,
    required this.pageIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        images.length,
        (indexDots) {
          return Container(
            margin: const EdgeInsets.only(bottom: 4),
            width: 8,
            height: pageIndex == indexDots ? 25 : 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: pageIndex == indexDots
                  ? AppColors.mainColor
                  : AppColors.mainColor.withOpacity(0.3),
            ),
          );
        },
      ),
    );
  }
}
