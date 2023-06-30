import 'package:flutter/material.dart';
import 'package:load_management/core/app_color.dart';
import 'package:load_management/core/app_images.dart';

import '../../../core/app_style.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    super.key,
    required this.onPressed,
    required this.text, this.widget,
  });

  final void Function()? onPressed;
  final String text;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: widget!,
      onPressed: onPressed,
      label: Text(
        text,
        style: elevatedButtonStyle,
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: kDeepPurple,
        fixedSize: const Size(200, 50)
      ),
    );
  }
}