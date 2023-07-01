import 'package:flutter/material.dart';
import 'package:load_management/core/app_style.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textWidgetTextStyle,
    );
  }
}
