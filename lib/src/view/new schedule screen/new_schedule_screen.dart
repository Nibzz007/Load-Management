import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:load_management/core/app_color.dart';
import 'package:load_management/core/app_sizes.dart';
import 'package:load_management/src/controller/date_controller.dart';
import 'package:load_management/src/view/new%20schedule%20screen/all_farmers_list.dart';
import 'package:load_management/src/view/widgets/elevated_button_widget.dart';
import 'package:load_management/src/view/widgets/text_form_field_widget.dart';
import '../widgets/common_appbar_widget.dart';
import '../widgets/text_widget.dart';

class NewScheduleScreen extends StatelessWidget {
  NewScheduleScreen({super.key});

  final DateController dateController = Get.put(DateController());

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
        child: GetBuilder<DateController>(
          builder: (controller) {
            return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
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
                    controller: controller.startDateController,
                    onTap: () {
                      controller.selectStartDate(context);
                    },
                    readOnly: true, // Prevents manual editing of the field
                  ),
                  kHeight20,
                  const TextWidget(text: 'End date'),
                  kHeight20,
                  TextFormFieldWidget(
                    hintText: 'Enter end date',
                    keyboardType: TextInputType.datetime,
                    controller: controller.endDateController,
                    onTap: () {
                      controller.selectEndDate(context);
                    },
                    readOnly: true,
                  ),
                  kHeight20,
                  const TextWidget(text: 'Duration of power supply'),
                  kHeight20,
                  TextFormFieldWidget(
                    hintText: 'Eg: 2 ',
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
                              Get.to(
                                () => const AllFarmersListScreen(),
                              );
                            },
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
                      )
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
