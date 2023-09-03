import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/app_color.dart';
import '../../../core/app_sizes.dart';
import '../../../core/app_style.dart';
import '../farmerslist screen/farmer_crops_screen.dart';
import '../widgets/common_appbar_widget.dart';

class AllFarmersListScreen extends StatelessWidget {
  const AllFarmersListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CommonAppbarWidget(
          text: 'All farmers',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CupertinoSearchTextField(),
              kHeight20,
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              // const FarmerIrrigationRequirementScreen(),
                              const FarmerCropsScreen(),
                        ),
                      );
                    },
                    splashColor: kGreen300,
                    title: Text(
                      'सांबा मातो',
                      style: listTileTextStyle,
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    thickness: 0.4,
                    indent: 4,
                    endIndent: 4,
                  );
                },
                itemCount: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}