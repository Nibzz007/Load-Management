import 'package:flutter/material.dart';
import 'package:load_management/core/app_color.dart';
import 'package:load_management/core/app_sizes.dart';
import 'package:load_management/core/app_style.dart';
import 'package:load_management/src/view/main%20screen/main_screen.dart';
import 'package:load_management/src/view/widgets/elevated_button_widget.dart';
import 'package:load_management/src/view/widgets/text_form_field_widget.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlack,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'लाॅगिन',
                style: mainTextStyle,
              ),
              kHeight30,
              TextFormFieldWidget(
                hintText: 'वापरकर्ता नाव',
                keyboardType: TextInputType.text,
                prefixIcon: const Icon(Icons.email),
              ),
              kHeight20,
              TextFormFieldWidget(
                hintText: 'पासवर्ड',
                keyboardType: TextInputType.text,
                obscureText: true,
                prefixIcon: const Icon(Icons.password),
              ),
              kHeight40,
              ElevatedButtonWidget(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MainScreen(),
                    ),
                  );
                },
                text: 'लाॅगिन',
                widget: const Icon(
                  Icons.login,
                  color: kWhite,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
