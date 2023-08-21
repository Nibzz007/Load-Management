import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:load_management/core/app_color.dart';
import 'package:load_management/core/app_sizes.dart';
import 'package:load_management/db/dbmodels.dart';
import 'package:load_management/db/getcropsapi.dart';
import 'package:load_management/src/controller/load_management_controller.dart';
import 'package:load_management/src/view/farmerslist%20screen/crop_information_screen.dart';
import 'package:load_management/src/view/widgets/elevated_button_widget.dart';
import 'package:load_management/src/view/widgets/text_form_field_widget.dart';
import 'package:load_management/src/view/widgets/text_widget.dart';
import '../widgets/common_appbar_widget.dart';

class AddNewFarmerScreen extends StatelessWidget {
  AddNewFarmerScreen({super.key});

  final LoadManagementController controller =
      Get.put(LoadManagementController());
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kHeight50,
                const TextWidget(text: 'Name of the Farmer'),
                kHeight10,
                TextFormFieldWidget(
                  hintText: 'eg: Rohit',
                  controller: controller.nameController,
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value != null && value.length < 3) {
                      return 'Enter a valid name';
                    } else {
                      return null;
                    }
                  },
                ),
                kHeight20,
                const TextWidget(text: 'Phone number'),
                kHeight10,
                TextFormFieldWidget(
                  hintText: '9645285560',
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value != null && value.length < 10) {
                      return 'Enter a valid phone number';
                    } else {
                      return null;
                    }
                  },
                ),
                kHeight20,
                const TextWidget(text: 'Ghat number'),
                kHeight10,
                TextFormFieldWidget(
                  hintText: '34',
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value != null && value.length < 1) {
                      return 'Enter a valid ghat number';
                    } else {
                      return null;
                    }
                  },
                ),
                kHeight20,
                const TextWidget(text: 'Total area'),
                kHeight20,
                TextFormFieldWidget(
                  hintText: '20',
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value != null && value.length < 1) {
                      return 'Field cannot be empty';
                    } else {
                      return null;
                    }
                  },
                ),
                kHeight80,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButtonWidget(
                      backgroundColor: kGreen,
                      onPressed: ()async {
                        if (irrigationDb.values.isEmpty ||
                            cropdb.values.isEmpty ||
                            soilDb.values.isEmpty ||
                            transformerDb.values.isEmpty) {
                         await getallcrops();
                         await getSoils();
                         await getirrigation();
                         await gettransformers();
                          Get.to(() => CropInformationScreen());
                        } else {
                          Get.to(() => CropInformationScreen());
                        }
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
      ),
    );
  }
}
