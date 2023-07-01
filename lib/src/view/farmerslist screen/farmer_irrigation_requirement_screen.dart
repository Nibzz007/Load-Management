import 'package:flutter/material.dart';
import 'package:load_management/core/app_color.dart';
import 'package:load_management/core/app_sizes.dart';
import 'package:load_management/src/view/farmerslist%20screen/widgets/row_textformfield_widget.dart';
import 'package:load_management/src/view/widgets/common_appbar_widget.dart';
import 'package:load_management/src/view/widgets/elevated_button_widget.dart';
import 'package:load_management/src/view/widgets/text_widget.dart';

class FarmerIrrigationRequirementScreen extends StatelessWidget {
  const FarmerIrrigationRequirementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CommonAppbarWidget(text: 'सांबा मातो'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const TextWidget(
                text: 'Schedule for Dec 14- Dec 24',
              ),
              kHeight30,
              const RowTextFormFieldWidget(
                text: 'Wheat(2 हे.)',
              ),
              kHeight30,
              const RowTextFormFieldWidget(
                text: 'Gram(1.5 हे.)',
              ),
              kHeight30,
              const RowTextFormFieldWidget(
                text: 'Soya(2 हे.)',
              ),
              kHeight30,
              const RowTextFormFieldWidget(
                text: 'Turmeric(2 हे.)',
              ),
              kHeight80,
              ElevatedButtonWidget(
                onPressed: () {},
                text: 'Save',
                widget: const Icon(
                  Icons.save_alt_outlined,
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
