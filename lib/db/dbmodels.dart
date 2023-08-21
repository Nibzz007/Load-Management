import 'package:hive/hive.dart';
import 'package:load_management/src/model/cropmodel/cropmodel.dart';
import 'package:load_management/src/model/farmer_add_model.dart';
import 'package:load_management/src/model/irrgationmodel/irrigationmodel.dart';
import 'package:load_management/src/model/soilmodel/soilmodel.dart';
import 'package:load_management/src/model/trnasformersmodel/transformermodel.dart';

late Box<CropModel> cropdb;
opencropdb() async {
  cropdb = await Hive.openBox<CropModel>('croplist');
}

late Box<SoilModel> soilDb;
opensoildb() async {
  soilDb = await Hive.openBox<SoilModel>('soildb');
}

late Box<IrrigatioModel> irrigationDb;
openIrrigationDb() async {
  irrigationDb = await Hive.openBox<IrrigatioModel>('irrigationdb');
}

late Box<TransforerModel> transformerDb;
opentransformferdbs() async {
  transformerDb = await Hive.openBox<TransforerModel>('transformersdb');
}
late Box<FarmerModel>farmersDb;
openFarmersDb()async{
  farmersDb = await Hive.openBox<FarmerModel>('farmersdb');

}