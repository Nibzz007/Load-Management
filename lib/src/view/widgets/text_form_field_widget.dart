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
  });

  final Widget? prefixIcon;
  final String hintText;
  final TextInputType keyboardType;
  bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        floatingLabelStyle: textFormFieldStyle,
        filled: true,
        fillColor: kWhite,
        hintText: hintText,
        prefixIcon: prefixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
