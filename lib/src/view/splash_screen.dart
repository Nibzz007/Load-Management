import 'package:flutter/material.dart';
import 'package:load_management/core/app_color.dart';
import 'package:load_management/core/app_images.dart';
import 'package:load_management/src/view/language%20selection%20screen/language_selection_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    goToHome(context);
    return Scaffold(
      backgroundColor: kBlack,
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Image.asset(
            splashImage,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  void goToHome(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then(
      (value) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const SelectLanguageScreen(),
        ),
      ),
    );
  }
}
