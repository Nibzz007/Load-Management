import 'package:get/get.dart';

class LoadManagementController extends GetxController {
  // CheckBox
  RxList<bool> checkboxStates = List.generate(8, (_) => false).obs;
  List<String> crops = [
    'Wheat',
    'Gram',
    'Soya',
    'Turmeric',
    'Millet',
    'Vegitables',
    'Fruits',
    'Others',
  ];

  
}