import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:load_management/core/app_color.dart';
import 'package:load_management/core/app_sizes.dart';
import 'package:load_management/src/view/farmerslist%20screen/crop_information_screen.dart';
import 'package:load_management/src/view/widgets/elevated_button_widget.dart';
import 'package:load_management/src/view/widgets/text_form_field_widget.dart';
import 'package:load_management/src/view/widgets/text_widget.dart';
import '../widgets/common_appbar_widget.dart';

class AddNewFarmerScreen extends StatelessWidget {
  const AddNewFarmerScreen({super.key});

  // final LoadManagementController controller =
  //     Get.put(LoadManagementController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CommonAppbarWidget(
          text: 'Add New Farmer',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kHeight50,
              const TextWidget(text: 'Name of the Farmer'),
              kHeight10,
              TextFormFieldWidget(
                hintText: 'eg: Rohit',
                keyboardType: TextInputType.text,
              ),
              kHeight20,
              const TextWidget(text: 'Phone number'),
              kHeight10,
              TextFormFieldWidget(
                hintText: '9645285560',
                keyboardType: TextInputType.number,
              ),
              kHeight20,
              const TextWidget(text: 'Ghat number'),
              kHeight10,
              TextFormFieldWidget(
                hintText: '34',
                keyboardType: TextInputType.number,
              ),
              kHeight20,
              const TextWidget(text: 'Total area'),
              kHeight20,
              TextFormFieldWidget(
                hintText: '20',
                keyboardType: TextInputType.number,
              ),
              // Column(
              //   children: [
              //     Obx(
              //       () => RadioListTile(
              //         activeColor: kGreen,
              //         value: 0,
              //         groupValue: selectedOption.value,
              //         onChanged: (value) => handleOptionChange(value!),
              //         title: const Text('विहिरीचा'),
              //       ),
              //     ),
              //     Obx(
              //       () => RadioListTile(
              //         activeColor: kGreen,
              //         value: 1,
              //         groupValue: selectedOption.value,
              //         onChanged: (value) => handleOptionChange(value!),
              //         title: const Text('बोअर वेल'),
              //       ),
              //     ),
              //   ],
              // ),
              // kHeight10,
              // const TextWidget(text: 'पिके निवडणे'),
              // kHeight10,
              // Column(
              //   children: List.generate(
              //     8,
              //     (index) => Row(
              //       children: [
              //         Obx(
              //           () => Checkbox(
              //             activeColor: kGreen,
              //             value: controller.checkboxStates[index],
              //             onChanged: (value) {
              //               controller.checkboxStates[index] = value!;
              //             },
              //           ),
              //         ),
              //         kWidth10,
              //         Text(controller.crops[index]),
              //       ],
              //     ),
              //   ),
              // ),
              kHeight80,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButtonWidget(
                    backgroundColor: kGreen,
                    onPressed: () {
                      Get.to(() => CropInformationScreen());
                    },
                    text: 'Continue',
                    widget: const Icon(
                      Icons.navigate_next,
                      color: kWhite,
                    ),
                  ),
                ],
              ),
              kHeight20,
            ],
          ),
        ),
      ),
    );
  }
}
