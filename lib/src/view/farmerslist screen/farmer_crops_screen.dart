import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:load_management/core/app_style.dart';
import 'package:load_management/src/view/farmerslist%20screen/farmer_each_crop_irrigation_details_screen.dart';

import '../../../core/app_color.dart';
import '../widgets/common_appbar_widget.dart';

class FarmerCropsScreen extends StatelessWidget {
  const FarmerCropsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CommonAppbarWidget(text: 'Farmer name'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                'गहू',
                style: listTileTextStyle,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
              ),
              onTap: () {
                Get.to(()=> EachCropIrrigationDetailScreen());
              },
              splashColor: kGreen300,
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              thickness: 0.4,
              indent: 4,
              endIndent: 4,
            );
          },
          itemCount: 4,
        ),
      ),
    );
  }
}
