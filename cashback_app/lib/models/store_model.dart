import 'package:flutter/material.dart';

class StoreModel extends ChangeNotifier {
  // Variable to track what is selected
  bool shoeTagSelected = true;

  // Number of items in Store
  late int numberOfItems = shoeImageNames.length;

  // Shoe Image Names
  final shoeImageNames = <String>[
    'nike_one',
    'nike_two',
    'nike_three',
    'nike_four',
    'nike_five',
    'nike_one',
    'nike_two',
    'nike_three',
    'nike_four',
    'nike_five',
    'nike_five',
    'nike_one',
    'nike_two',
    'nike_three',
    'nike_four',
    'nike_five'
  ];

  // Clothing Image Names
  final clothingImageNames = <String>[
    'nike_clothe_one',
    'nike_clothe_two',
    'nike_clothe_three',
    'nike_clothe_four'
  ];

  // Func to handle selected tags
  void handleTagsSelected(bool shoeTag) {
    if (shoeTag == true) {
      shoeTagSelected = true;
      numberOfItems = shoeImageNames.length;
    } else {
      shoeTagSelected = false;
      numberOfItems = clothingImageNames.length;
    }
    notifyListeners();
  }

  // Item Price
  int itemPrice = 460;
}

class TagsModel extends ChangeNotifier {
  // Object to keep track of tapped `tags`
  bool clothesTag = false;
  bool shoesTag = true;

  // Func to handle Gesture Taps
  void handleTagTap(String tagName, Function handleTagSelected) {
    if (tagName == 'clothes') {
      clothesTag = true;
      shoesTag = false;
      handleTagSelected(false);
    } else {
      clothesTag = false;
      shoesTag = true;
      handleTagSelected(true);
    }
    notifyListeners();
  }
}
