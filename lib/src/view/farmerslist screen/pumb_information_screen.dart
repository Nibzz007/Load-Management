import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:load_management/core/app_sizes.dart';
import 'package:load_management/db/dbmodels.dart';
import 'package:load_management/src/controller/drop_down_controller.dart';
import 'package:load_management/src/controller/load_management_controller.dart';
import 'package:load_management/src/model/farmer_add_model.dart';
import 'package:load_management/src/view/farmerslist%20screen/widgets/drop_down_container_widget.dart';
import 'package:load_management/src/view/main%20screen/main_screen.dart';
import 'package:load_management/src/view/widgets/text_form_field_widget.dart';
import 'package:load_management/src/view/widgets/text_widget.dart';
import '../../../core/app_color.dart';
import '../widgets/common_appbar_widget.dart';
import '../widgets/elevated_button_widget.dart';

class PumbInformationScreen extends StatelessWidget {
  PumbInformationScreen({super.key});

  final selectedOption = 0.obs;

  void handleOptionChange(int value) {
    selectedOption.value = value;
  }

  final LoadManagementController controller2 =
      Get.put(LoadManagementController());

  DropDownController controller = Get.find<DropDownController>();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CommonAppbarWidget(
          text: 'Add Pumb information',
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              kHeight20,
              const TextWidget(text: 'DT id'),
              kHeight10,
              DropDownContainerWidget(
                height: height,
                width: width,
                hintText: 'DT id',
                list: controller.transformers,
              ),
              kHeight20,
              const TextWidget(text: 'Pumb capacity'),
              kHeight10,
              TextFormFieldWidget(
                hintText: '50hP',
                keyboardType: TextInputType.number,
              ),
              kHeight20,
              const TextWidget(text: 'Source type'),
              kHeight10,
              DropDownContainerWidget(
                height: height,
                width: width,
                hintText: 'Select the water source',
                list: controller.dropdownItems,
              ),
              kHeight20,
              const TextWidget(
                text: 'Water pumping directly to field from water source',
              ),
              kHeight10,
              Obx(
                () => RadioListTile(
                  activeColor: kGreen,
                  value: 0,
                  groupValue: selectedOption.value,
                  onChanged: (value) => handleOptionChange(value!),
                  title: const Text('Yes'),
                ),
              ),
              Obx(
                () => RadioListTile(
                  activeColor: kGreen,
                  value: 1,
                  groupValue: selectedOption.value,
                  onChanged: (value) => handleOptionChange(value!),
                  title: const Text('No'),
                ),
              ),
              kHeight40,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      ElevatedButtonWidget(
                        onPressed: () {
                          controller.addpumpinfo();
                        },
                        text: 'Add more',
                        widget: const Icon(
                          Icons.add,
                          color: kWhite,
                        ),
                        backgroundColor: kGreen,
                      ),
                      kHeight20,
                      ElevatedButtonWidget(
                        onPressed: () async {
                          if (controller.transformermodelist.isEmpty) {
                            controller.addpumpinfo();
                          }
                          await farmersDb.add(
                            FarmerModel(
                              name: controller2.nameController.text,
                              area: controller2.totalAreaController.text,
                              crops: controller.cropslist,
                              ghatNumber: controller2.ghatNumberController.text,
                              id: 11,
                              ispumping:
                                  selectedOption.value == 0 ? true : false,
                              number: controller2.phoneNumberController.text,
                              transformers: controller.transformermodelist,
                            ),
                          );
                          log(farmersDb.values.length.toString());
                          Get.offAll(MainScreen());
                        },
                        text: 'Save',
                        widget: const Icon(
                          Icons.navigate_next,
                          color: kWhite,
                        ),
                        backgroundColor: kGreen,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
