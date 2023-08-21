import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:load_management/db/dbmodels.dart';
import 'package:load_management/src/model/cropmodel/cropmodel.dart';
import 'package:load_management/src/model/irrgationmodel/irrigationmodel.dart';
import 'package:load_management/src/model/soilmodel/soilmodel.dart';
import 'package:load_management/src/view/splash_screen.dart';

void main()async {
 await Hive.initFlutter();
  Hive.registerAdapter(CropModelAdapter());
  Hive.registerAdapter(SoilModelAdapter());
  Hive.registerAdapter(IrrigatioModelAdapter());
 await opencropdb();
 await opensoildb();
 await openIrrigationDb();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        SystemChannels.textInput.invokeMethod('TextInput.hide');
      },
      child: GetMaterialApp(
        theme: ThemeData(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
      ),
    );
  }
}
