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
    if (cropNames.contains(newValue)) {
      selectedcrop = newValue;
    } else if (soillist.contains(newValue)) {
      selectedsoil = newValue;
    } else if (iriigationlist.contains(newValue)) {
      selectedirrigation = newValue;
    } else if (transformers.contains(newValue)) {
      selectedtransformer = newValue;
    }
  }

  String selectedcrop = '';
  String selectedsoil = '';
  String selectedirrigation = '';
  String selectedtransformer = '';

  void addcrop() {
    cropslist.add(
        cropdb.values.where((element) => element.name == selectedcrop).first);
    soillmodelist.add(
        soilDb.values.where((element) => element.name == selectedsoil).first);
    irrigationmodellist.add(irrigationDb.values
        .where((element) => element.name == selectedirrigation)
        .first);
    log(cropslist.length.toString());
    log(cropslist.length.toString());
    log(cropslist.length.toString());
    log(cropslist.length.toString());
  }

  // var selectedcrop = 'Option 1'.obs;
// var selected =
}
