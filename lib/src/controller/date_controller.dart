import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DateController extends GetxController {
  TextEditingController startDateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();
  void selectStartDate(BuildContext context) {
    DatePicker.showDatePicker(
      context,
      showTitleActions: true,
      onChanged: (date) {},
      onConfirm: (date) {
        final formattedDate = DateFormat('yyyy-MM-dd').format(date);
        startDateController.text = formattedDate;
      },
      currentTime: DateTime.now(),
    );
  }

  void selectEndDate(BuildContext context) {
    DatePicker.showDatePicker(
      context,
      showTitleActions: true,
      onChanged: (date) {},
      onConfirm: (date) {
        final formattedDate = DateFormat('yyyy-MM-dd').format(date);
        endDateController.text = formattedDate;
      },
    );
  }
}
