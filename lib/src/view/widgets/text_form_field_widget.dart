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
    this.fillColor = kWhite,
    this.readOnly = false,
    this.onTap, this.controller,
  });

  final Widget? prefixIcon;
  final String hintText;
  final TextInputType keyboardType;
  bool obscureText;
  final Color fillColor;
  final void Function()? onTap;
  final bool readOnly;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onTap: onTap,
      readOnly: readOnly,
      obscureText: obscureText,
      keyboardType: keyboardType,
      cursorHeight: 25,
      style: const TextStyle(height: 1.2, fontSize: 17),
      decoration: InputDecoration(
        floatingLabelStyle: textFormFieldStyle,
        filled: true,
        fillColor: fillColor,
        hintText: hintText,
        hintStyle: hintStyle,
        prefixIcon: prefixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
