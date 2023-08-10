import 'package:flutter/material.dart';
import 'package:load_management/core/app_color.dart';
import 'package:load_management/core/app_sizes.dart';
import 'package:load_management/src/view/farmerslist%20screen/farmers_list_screen.dart';
import 'package:load_management/src/view/new%20schedule%20screen/new_schedule_screen.dart';
import 'package:load_management/src/view/widgets/container_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kWhite,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              child: ContainerWidget(
                height: height,
                icon: Icons.add_card_outlined,
                text: 'New Schedule',
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => NewScheduleScreen(),
                  ),
                );
              },
            ),
            kHeight20,
            InkWell(
              child: ContainerWidget(
                height: height,
                icon: Icons.group_add_outlined,
                text: 'Farmers List',
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const FarmersListScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
