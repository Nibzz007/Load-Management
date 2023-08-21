import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:load_management/core/app_style.dart';
import 'package:load_management/src/view/widgets/testscreen.dart';

import '../../../core/app_color.dart';

class CommonAppbarWidget extends StatelessWidget {
  const CommonAppbarWidget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kGreen,
      iconTheme: const IconThemeData(color: kWhite),
      title: Text(
        text,
        style: appBarTextStyle,
      ),
      centerTitle: true,
      actions: [IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const TestScreen(),));}, icon: const Icon(Icons.home))],
    );
  }
}
