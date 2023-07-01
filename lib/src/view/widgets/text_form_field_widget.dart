import 'package:flutter/material.dart';
import 'package:load_management/core/app_color.dart';
import 'package:load_management/core/app_style.dart';

class TextFormFieldWidget extends StatelessWidget {
  TextFormFieldWidget({
    super.key,
    this.prefixIcon,
    required this.hintText,
    required this.keyboardType,
    this.obscureText = false,
    this.fillColor = kWhite
  });

  final Widget? prefixIcon;
  final String hintText;
  final TextInputType keyboardType;
  bool obscureText;
  final Color fillColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      cursorHeight: 25,
      style: const TextStyle(height: 1.2,fontSize: 17),
      decoration: InputDecoration(
        floatingLabelStyle: textFormFieldStyle,
        filled: true,
        fillColor: fillColor,
        hintText: hintText,
        prefixIcon: prefixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
