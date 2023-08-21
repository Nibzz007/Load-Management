import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:load_management/core/app_color.dart';
import 'package:load_management/core/app_sizes.dart';
import 'package:load_management/src/controller/drop_down_controller.dart';
import 'package:load_management/src/view/farmerslist%20screen/pumb_information_screen.dart';
import 'package:load_management/src/view/farmerslist%20screen/widgets/drop_down_container_widget.dart';
import 'package:load_management/src/view/widgets/elevated_button_widget.dart';
import 'package:load_management/src/view/widgets/text_form_field_widget.dart';
import 'package:load_management/src/view/widgets/text_widget.dart';

import '../widgets/common_appbar_widget.dart';

class CropInformationScreen extends StatelessWidget {
  CropInformationScreen({super.key});

  final DropDownController controller = Get.put(DropDownController());

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CommonAppbarWidget(
          text: 'Add crop information',
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GetBuilder<DropDownController>(
                builder: (controller) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      kHeight20,
                      const TextWidget(text: 'Select Crop'),
                      kHeight10,
                      DropDownContainerWidget(
                        height: height,
                        width: width,
                        hintText: 'Select the crop',
                        list: controller.cropNames,
                      ),
                      kHeight20,
                      const TextWidget(text: 'Select Soil Type'),
                      kHeight10,
                      DropDownContainerWidget(
                        height: height,
                        width: width,
                        hintText: 'Select the soil type',
                        list: controller.soillist,
                      ),
                      kHeight20,
                      const TextWidget(text: 'Select Irrigation method'),
                      kHeight10,
                      DropDownContainerWidget(
                        height: height,
                        width: width,
                        hintText: 'Select irrigation method',
                        list: controller.iriigationlist,
                      ),
                      kHeight20,
                      const TextWidget(text: 'Area'),
                      kHeight10,
                      TextFormFieldWidget(
                        hintText: '10',
                        keyboardType: TextInputType.number,
                      ),
                      kHeight40,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              ElevatedButtonWidget(
                                onPressed: () {
                                  controller.addcrop();
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
                                onPressed: () {
                                  Get.to(() => PumbInformationScreen());
                                },
                                text: 'Continue',
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
                  );
                },
              )),
        ),
      ),
    );
  }
}
