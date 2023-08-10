import 'package:flutter/material.dart';
import '../../../core/app_color.dart';
import '../../../core/app_sizes.dart';
import '../../../core/app_style.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
    required this.height,
    required this.icon,
    required this.text,
  });

  final double height;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.1,
      width: height * 0.35,
      decoration: BoxDecoration(
        color: kGreen,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: height * 0.05,
            color: kWhite,
          ),
          kWidth20,
          Text(
            text,
            style: mainScreenTextStyle,
          ),
        ],
      ),
    );
  }
}
