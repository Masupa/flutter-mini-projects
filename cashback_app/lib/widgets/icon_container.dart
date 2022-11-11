import 'package:cashback_app/misc/colors.dart';
import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  final IconData icon;
  final String navRoute;
  const IconContainer({
    Key? key,
    required this.icon,
    required this.navRoute,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: () {
        Navigator.pushNamed(context, navRoute);
      },
      child: Material(
        elevation: 50.0,
        borderRadius: BorderRadius.circular(30),
        color: AppColors.containerColor,
        shadowColor: Colors.black,
        child: Container(
          // properties
          width: 75,
          height: 75,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: AppColors.containerColor,
          ),

          // Icon child
          child: Icon(
            icon,
            color: AppColors.primaryTextColor,
          ),
        ),
      ),
    );
  }
}
