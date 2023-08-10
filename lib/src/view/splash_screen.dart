import 'package:flutter/material.dart';
import 'package:load_management/core/app_color.dart';
import 'package:load_management/core/app_images.dart';
import 'package:load_management/src/view/main%20screen/main_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    goToHome(context);
    return Scaffold(
      backgroundColor: kBlack,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Image.asset(
          splashImage,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  void goToHome(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then(
      (value) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const MainScreen(),
        ),
      ),
    );
  }
}
