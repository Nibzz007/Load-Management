import 'package:get/get.dart';

class DropDownController extends GetxController {
  var selectedOption = 'Option 1'.obs;
  List<String> dropdownItems = ['Option 1', 'Option 2', 'Option 3'];

  void updateSelectedOption(String newValue) {
    selectedOption.value = newValue;
  }
}
