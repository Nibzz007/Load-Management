import 'dart:developer';

import 'package:get/get.dart';
import 'package:load_management/db/dbmodels.dart';
import 'package:load_management/src/model/cropmodel/cropmodel.dart';
import 'package:load_management/src/model/irrgationmodel/irrigationmodel.dart';
import 'package:load_management/src/model/soilmodel/soilmodel.dart';
import 'package:load_management/src/model/trnasformersmodel/transformermodel.dart';

class DropDownController extends GetxController {
  var selectedOption = 'Option 1'.obs;
  List<String> dropdownItems = ['Option 1', 'Option 2', 'Option 3'];
  List<String> cropNames =
      cropdb.values.map((soilModel) => soilModel.name!).toList();
  List<String> soillist =
      soilDb.values.map((soilModel) => soilModel.name!).toList();
  List<String> iriigationlist =
      irrigationDb.values.map((soilModel) => soilModel.name!).toList();
  List<String> transformers =
      transformerDb.values.map((soilModel) => soilModel.name!).toList();

  List<CropModel> cropslist = <CropModel>[].obs;
  List<SoilModel> soillmodelist = <SoilModel>[].obs;
  List<IrrigatioModel> irrigationmodellist = <IrrigatioModel>[].obs;
  List<TransforerModel> transformermodelist = <TransforerModel>[].obs;

  void updateSelectedOption(String newValue) {
    selectedOption.value = newValue;
  }

  void addcrop(String selectedname) {
    if (cropNames.contains(selectedname)) {
      cropslist.add(
          cropdb.values.where((element) => element.name == selectedname).first);
      log(cropslist.length.toString());
      log(cropslist[0].name!);
      log('yes');
    } else if (soillist.contains(selectedname)) {
      soillmodelist.add(
          soilDb.values.where((element) => element.name == selectedname).first);
    } else if (iriigationlist.contains(selectedname)) {
      irrigationmodellist.add(irrigationDb.values
          .where((element) => element.name == selectedname)
          .first);
    } else if (transformers.contains(selectedname)) {
      transformermodelist.add(transformerDb.values
          .where((element) => element.name == selectedname)
          .first);
    }
  }

  var selectedcrop = 'Option 1'.obs;
// var selected =
}
