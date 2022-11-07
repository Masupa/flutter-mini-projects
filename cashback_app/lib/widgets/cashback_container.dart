import 'package:flutter/material.dart';

import '../misc/colors.dart';
import 'large_text.dart';
import 'small_text.dart';

class CashbackContainer extends StatelessWidget {
  final double amount;
  final String companyOwed;
  final String cashbackMessage;
  final Color amountTextColor;

  // Constructor
  const CashbackContainer(
      {Key? key,
      required this.amount,
      required this.companyOwed,
      required this.cashbackMessage,
      this.amountTextColor = AppColors.primaryTextColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: todo
      // TODO: change the width to be a fraction of the screen
      width: 200,
      height: 170,
      padding: const EdgeInsets.only(left: 20, top: 25, bottom: 30),
      decoration: BoxDecoration(
        color: AppColors.containerColor,
        borderRadius: BorderRadius.circular(30),
      ),
      // Children
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          LargeText(
            text: '\$$amount',
            textSize: 35,
            textColor: amountTextColor,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LargeText(text: companyOwed, textSize: 20),
              const SizedBox(height: 5.0),
              SmallText(
                text: cashbackMessage,
                textSize: 12.5,
              )
            ],
          ),
        ],
      ),
    );
  }
}
