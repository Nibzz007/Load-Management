import 'package:flutter/material.dart';
import 'package:load_management/core/app_color.dart';
import 'package:load_management/core/app_sizes.dart';
import 'package:load_management/src/view/widgets/elevated_button_widget.dart';
import 'package:load_management/src/view/widgets/text_form_field_widget.dart';
import '../widgets/common_appbar_widget.dart';
import '../widgets/text_widget.dart';

class NewScheduleScreen extends StatelessWidget {
  const NewScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CommonAppbarWidget(
          text: 'Create new schedule',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 10,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const TextWidget(
                text: 'How many days required for irrigation',
              ),
              kHeight20,
              TextFormFieldWidget(
                hintText: 'Enter the number of days',
                keyboardType: TextInputType.number,
              ),
              kHeight20,
              const TextWidget(text: 'Start date'),
              kHeight20,
              TextFormFieldWidget(
                hintText: 'Enter start date',
                keyboardType: TextInputType.datetime,
              ),
              kHeight20,
              const TextWidget(text: 'End date'),
              kHeight20,
              TextFormFieldWidget(
                hintText: 'Enter end date',
                keyboardType: TextInputType.datetime
              ),
              kHeight40,
              ElevatedButtonWidget(
                onPressed: () {},
                text: 'Irrigation requirements',
                widget: const Icon(
                  Icons.list_alt_outlined,
                  color: kWhite,
                ),
                backgroundColor: kGreen,
              ),
              kHeight20,
              ElevatedButtonWidget(
                onPressed: () {},
                text: 'Create schedule',
                widget: const Icon(
                  Icons.schedule_outlined,
                  color: kWhite,
                ),
                backgroundColor: kGreen,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
