import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:load_management/src/controller/drop_down_controller.dart';

class DropDownContainerWidget extends StatelessWidget {
  DropDownContainerWidget({
    super.key,
    required this.height,
    required this.width,
    required this.hintText,
  });

  final double height;
  final double width;
  final String hintText;

  final DropDownController controller = Get.find<DropDownController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.06,
      width: width * 0.9,
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              hint: Text(hintText),
              items: controller.dropdownItems
                  .map((item) => DropdownMenuItem(
                        value: item,
                        child: Text(item),
                      ))
                  .toList(),
              onChanged: (value) {
                controller.updateSelectedOption(value!);
              },
            )
          ],
        ),
      ),
    );
  }
}
