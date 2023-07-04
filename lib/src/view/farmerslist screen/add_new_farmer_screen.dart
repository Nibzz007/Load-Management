import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:load_management/core/app_color.dart';
import 'package:load_management/core/app_sizes.dart';
import 'package:load_management/src/controller/load_management_controller.dart';
import 'package:load_management/src/view/farmerslist%20screen/farmers_list_screen.dart';
import 'package:load_management/src/view/widgets/elevated_button_widget.dart';
import 'package:load_management/src/view/widgets/text_form_field_widget.dart';
import 'package:load_management/src/view/widgets/text_widget.dart';
import '../widgets/common_appbar_widget.dart';

class AddNewFarmerScreen extends StatelessWidget {
  AddNewFarmerScreen({super.key});

  final selectedOption = 0.obs;

  void handleOptionChange(int value) {
    selectedOption.value = value;
  }

  final LoadManagementController controller =
      Get.put(LoadManagementController());

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
              kHeight30,
              const TextWidget(text: 'Name'),
              kHeight10,
              TextFormFieldWidget(
                hintText: 'eg: Rohit',
                keyboardType: TextInputType.text,
              ),
              kHeight20,
              const TextWidget(text: 'Load Rating'),
              kHeight10,
              TextFormFieldWidget(
                hintText: 'eg: 50 %',
                keyboardType: TextInputType.number,
              ),
              kHeight20,
              const TextWidget(text: 'विहिरीचा प्रकार'),
              kHeight10,
              Column(
                children: [
                  Obx(
                    () => RadioListTile(
                      activeColor: kGreen,
                      value: 0,
                      groupValue: selectedOption.value,
                      onChanged: (value) => handleOptionChange(value!),
                      title: const Text('विहिरीचा'),
                    ),
                  ),
                  Obx(
                    () => RadioListTile(
                      activeColor: kGreen,
                      value: 1,
                      groupValue: selectedOption.value,
                      onChanged: (value) => handleOptionChange(value!),
                      title: const Text('बोअर वेल'),
                    ),
                  ),
                ],
              ),
              kHeight10,
              const TextWidget(text: 'पिके निवडणे'),
              kHeight10,
              Column(
                children: List.generate(
                  8,
                  (index) => Row(
                    children: [
                      Obx(
                        () => Checkbox(
                          activeColor: kGreen,
                          value: controller.checkboxStates[index],
                          onChanged: (value) {
                            controller.checkboxStates[index] = value!;
                          },
                        ),
                      ),
                      kWidth10,
                      Text(controller.crops[index]),
                    ],
                  ),
                ),
              ),
              kHeight20,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButtonWidget(
                    backgroundColor: kGreen,
                    onPressed: () {
                      
                    },
                    text: 'Add',
                    widget: const Icon(
                      Icons.add_sharp,
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
