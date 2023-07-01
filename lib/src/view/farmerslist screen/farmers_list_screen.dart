import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:load_management/core/app_color.dart';
import 'package:load_management/core/app_sizes.dart';
import 'package:load_management/core/app_style.dart';
import 'package:load_management/src/view/farmerslist%20screen/farmer_irrigation_requirement_screen.dart';
import 'package:load_management/src/view/widgets/common_appbar_widget.dart';

class FarmersListScreen extends StatelessWidget {
  const FarmersListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CommonAppbarWidget(text: 'Farmers list'),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kGreen,
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: kWhite,
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
                              const FarmerIrrigationRequirementScreen(),
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
