import 'package:cashback_app/misc/colors.dart';
import 'package:cashback_app/widgets/large_text.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: AppColors.mainColor,
      body: const Center(
        child: LargeText(text: "Cart Page"),
      ),
    );
  }
}
