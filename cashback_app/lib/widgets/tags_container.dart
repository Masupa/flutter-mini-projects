import 'package:flutter/material.dart';

import '../misc/colors.dart';
import 'small_text.dart';

// 1. Convert Widget from a Stateless to Statefull Widget: DONE
// 2. Add a Gesture Detector to each `Tag Container`
// 3. Write a void function that reacts to `Tap`
// 4.
// 5.

class TagsContainer extends StatefulWidget {
  final String firstTagText;
  final String secondTagText;

  // Constructor
  const TagsContainer({
    Key? key,
    required this.firstTagText,
    required this.secondTagText,
  }) : super(key: key);

  @override
  State<TagsContainer> createState() => _TagsContainerState();
}

class _TagsContainerState extends State<TagsContainer> {
  // Object to keep track of tapped `tags`
  bool clothesTag = false;
  bool shoesTag = true;

  // Func to handle Gesture Taps
  void _handleTagTap(String tagName) {
    setState(() {
      if (tagName == 'clothes') {
        clothesTag = true;
        shoesTag = false;
      } else {
        clothesTag = false;
        shoesTag = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // First Tag
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => _handleTagTap('clothes'),
              child: Container(
                height: 30,
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
                decoration: BoxDecoration(
                  color: clothesTag
                      ? const Color.fromARGB(255, 127, 127, 127)
                      : AppColors.greyContainerColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SmallText(
                  text: '#${widget.firstTagText}',
                  textSize: 15.0,
                  textColor: clothesTag
                      ? AppColors.whiteColor
                      : const Color.fromARGB(126, 253, 255, 255),
                ),
              ),
            ),
            const SizedBox(width: 40),
          ],
        ),
        const SizedBox(height: 15.0),

        // Second Tag
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 40),
            GestureDetector(
              onTap: () => _handleTagTap('shoes'),
              child: Container(
                height: 30,
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
                decoration: BoxDecoration(
                  color: shoesTag
                      ? const Color.fromARGB(255, 127, 127, 127)
                      : AppColors.greyContainerColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SmallText(
                  text: '#${widget.secondTagText}',
                  textSize: 15.0,
                  textColor: shoesTag
                      ? AppColors.whiteColor
                      : const Color.fromARGB(126, 253, 255, 255),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
