import 'package:cashback_app/models/store_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
  final Function handleTagSelected;

  // Constructor
  const TagsContainer({
    Key? key,
    required this.firstTagText,
    required this.secondTagText,
    required this.handleTagSelected,
  }) : super(key: key);

  @override
  State<TagsContainer> createState() => _TagsContainerState();
}

class _TagsContainerState extends State<TagsContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // First Tag
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => Provider.of<TagsModel>(context, listen: false)
                  .handleTagTap('clothes', widget.handleTagSelected),
              child: Container(
                height: 30,
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
                decoration: BoxDecoration(
                  color: context.watch<TagsModel>().clothesTag
                      ? const Color.fromARGB(255, 127, 127, 127)
                      : AppColors.greyContainerColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SmallText(
                  text: '#${widget.firstTagText}',
                  textSize: 15.0,
                  textColor: context.watch<TagsModel>().clothesTag
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
              onTap: () => Provider.of<TagsModel>(context, listen: false)
                  .handleTagTap('shoes', widget.handleTagSelected),
              child: Container(
                height: 30,
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
                decoration: BoxDecoration(
                  color: context.watch<TagsModel>().shoesTag
                      ? const Color.fromARGB(255, 127, 127, 127)
                      : AppColors.greyContainerColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SmallText(
                  text: '#${widget.secondTagText}',
                  textSize: 15.0,
                  textColor: context.watch<TagsModel>().shoesTag
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
