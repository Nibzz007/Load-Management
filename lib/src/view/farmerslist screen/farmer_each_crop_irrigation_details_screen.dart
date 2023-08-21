import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:load_management/core/app_sizes.dart';
import 'package:load_management/src/controller/date_controller.dart';
import 'package:load_management/src/controller/drop_down_controller.dart';
import 'package:load_management/src/view/farmerslist%20screen/widgets/drop_down_container_widget.dart';
import 'package:load_management/src/view/widgets/elevated_button_widget.dart';
import 'package:load_management/src/view/widgets/text_form_field_widget.dart';
import 'package:load_management/src/view/widgets/text_widget.dart';
import '../../../core/app_color.dart';
import '../widgets/common_appbar_widget.dart';

class EachCropIrrigationDetailScreen extends StatelessWidget {
  EachCropIrrigationDetailScreen({super.key});

  final selectedOption = 0.obs;

  void handleOptionChange(int value) {
    selectedOption.value = value;
  }

  DropDownController controller = Get.put(DropDownController());
  DateController dateController = Get.put(DateController());

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CommonAppbarWidget(text: 'Farmer name'),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                kHeight20,
                const TextWidget(text: 'Number of irrigation required'),
                kHeight10,
                TextFormFieldWidget(
                  hintText: '3',
                  keyboardType: TextInputType.number,
                  controller: dateController.noOfIriigationController,
                ),
                kHeight20,
                const TextWidget(text: 'Number of irrigation days required'),
                kHeight10,
                TextFormFieldWidget(
                  hintText: '10',
                  keyboardType: TextInputType.number,
                  controller: dateController.noOfIriigationDaysController,
                ),
                kHeight20,
                const TextWidget(
                  text: 'Within how many days irrigation will start',
                ),
                kHeight10,
                TextFormFieldWidget(
                  hintText: '5',
                  keyboardType: TextInputType.number,
                  controller: dateController.iriigationStartController,
                ),
                kHeight20,
                const TextWidget(text: 'Pumb used'),
                kHeight10,
                DropDownContainerWidget(
                  height: height,
                  width: width,
                  hintText: 'Select pumb',
                ),
                kHeight20,
                const TextWidget(text: 'How long are you using each day'),
                kHeight10,
                TextFormFieldWidget(
                  hintText: '8',
                  keyboardType: TextInputType.number,
                  controller: dateController.iriigationLongController,
                ),
                kHeight20,
                const TextWidget(
                  text: 'Transfer water from one source to another',
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
                kHeight20,
                const TextWidget(
                  text:
                      'How long are you using the source for transfer everyday',
                ),
                kHeight10,
                TextFormFieldWidget(
                  hintText: '8',
                  keyboardType: TextInputType.number,
                  controller: dateController.sourceUseEachDayController,
                ),
                kHeight20,
                const TextWidget(
                  text: 'Number of days can change for the irrigation',
                ),
                kHeight10,
                TextFormFieldWidget(
                  hintText: '8',
                  keyboardType: TextInputType.number,
                  controller: dateController.changeOfDaydsController,
                ),
                kHeight20,
                const TextWidget(
                  text: 'Wheter night irrigation is acceptable ?',
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
                kHeight20,
                const TextWidget(text: 'Slot duration'),
                kHeight10,
                TextFormFieldWidget(
                  hintText: '26',
                  keyboardType: TextInputType.number,
                  controller: dateController.slotDurationController,
                ),
                kHeight30,
                ElevatedButtonWidget(
                  onPressed: () {},
                  text: 'Save',
                  widget: const Icon(
                    Icons.save,
                    color: kWhite,
                  ),
                  backgroundColor: kGreen,
                ),
                kHeight20,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
