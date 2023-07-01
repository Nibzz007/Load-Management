import 'package:flutter/material.dart';
import 'package:load_management/core/app_color.dart';
import 'package:load_management/core/app_images.dart';
import 'package:load_management/core/app_sizes.dart';
import 'package:load_management/core/app_style.dart';
import 'package:load_management/src/view/login%20screen/login_screen.dart';
import 'package:load_management/src/view/widgets/elevated_button_widget.dart';

class SelectLanguageScreen extends StatelessWidget {
  const SelectLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: kDeepPurple,
        child: const Icon(
          Icons.arrow_forward,
          color: kWhite,
        ),
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const LogInScreen(),
            ),
          );
        },
      ),
      backgroundColor: kBlack,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'तुमची भाषा निवडा',
              style: mainTextStyle,
            ),
            kHeight30,
            ElevatedButtonWidget(
              onPressed: () {},
              text: 'मराठी',
              widget: Image.asset(
                indiaFlag,
                height: 10,
                width: 10,
              ),
            ),
            kHeight10,
            ElevatedButtonWidget(
              onPressed: () {},
              text: 'English',
              widget: Image.asset(
                englishFlag,
                height: 10,
                width: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
