import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:load_management/core/api_end_points.dart';
import 'package:load_management/db/dbmodels.dart';
import 'package:load_management/src/model/crop_jso_model/crop_jso_model.dart';
import 'package:load_management/src/model/cropmodel/cropmodel.dart';
import 'package:load_management/src/model/irrgationmodel/irrigationmodel.dart';
import 'package:load_management/src/model/irrrigation_json_model/irrrigation_json_model.dart';
import 'package:load_management/src/model/soil_json_model/soil_json_model.dart';
import 'package:load_management/src/model/soilmodel/soilmodel.dart';
import 'package:load_management/src/model/transformers_json_model/transformers_json_model.dart';
import 'package:load_management/src/model/trnasformersmodel/transformermodel.dart';
import 'package:load_management/src/model/user_api_model/crop.dart';
import 'package:load_management/src/model/user_api_model/user_api_model.dart';

getallcrops() async {
  final response = await http.get(Uri.parse(baseurl + cropsurl));
  if (cropdb.values.isEmpty) {
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final List<dynamic> cropsJson = data['data'];
      final List<CropJsoModel> crops =
          cropsJson.map((json) => CropJsoModel.fromJson(json)).toList();
      for (var item in crops) {
        await cropdb.add(
          CropModel(
              id: item.id,
              createdAt: item.createdAt,
              updatedAt: item.updatedAt,
              name: item.name,
              nameMr: item.nameMr,
              waterRequirement: item.waterRequirement),
        );
      }
      log(cropdb.values.length.toString());
    } else {
      log(response.statusCode.toString());
    }
  } else {
    log(cropdb.values.length.toString());
  }
}

getSoils() async {
  final response = await http.get(Uri.parse(baseurl + soil));
  if (response.statusCode == 200) {
    final Map<String, dynamic> data = json.decode(response.body);
    final List<dynamic> soiljson = data['data'];
    final List<SoilJsonModel> soils =
        soiljson.map((json) => SoilJsonModel.fromJson(json)).toList();
    for (var item in soils) {
      await soilDb.add(
        SoilModel(
          id: item.id,
          createdAt: item.createdAt,
          updatedAt: item.updatedAt,
          name: item.name,
          nameMr: item.nameMr,
        ),
      );
    }
    log(soilDb.values.length.toString());
  } else {
    log(response.statusCode.toString());
  }
}

getirrigation() async {
  final response = await http.get(Uri.parse(baseurl + irrigation));
  if (response.statusCode == 200) {
    final Map<String, dynamic> data = json.decode(response.body);
    final List<dynamic> soiljson = data['data'];
    final List<IrrrigationJsonModel> irrigation =
        soiljson.map((json) => IrrrigationJsonModel.fromJson(json)).toList();
    for (var item in irrigation) {
      await irrigationDb.add(
        IrrigatioModel(
          id: item.id,
          createdAt: item.createdAt,
          updatedAt: item.updatedAt,
          name: item.name,
          nameMr: item.nameMr,
        ),
      );
    }
    log(irrigationDb.values.length.toString());
  } else {
    log(response.statusCode.toString());
  }
}

gettransformers() async {
  final response = await http.get(Uri.parse(baseurl + transformers));
  if (response.statusCode == 200) {
    final Map<String, dynamic> data = json.decode(response.body);
    final List<dynamic> soiljson = data['data'];
    final List<TransformersJsonModel> transformerslist =
        soiljson.map((json) => TransformersJsonModel.fromJson(json)).toList();
    for (var item in transformerslist) {
      await transformerDb.add(
        TransforerModel(
          id: item.id,
          createdAt: item.createdAt,
          updatedAt: item.updatedAt,
          name: item.name,
          nameMr: item.nameMr,
        ),
      );
    }
    log(transformerDb.values.length.toString());
  } else {
    log(response.statusCode.toString());
  }
}

Future<List<String>> getallfarmers() async {
  final response = await http.get(Uri.parse(farmers));
  if (response.statusCode == 200) {
    // log(response.body);
    final dataList = json.decode(response.body);
    final List<dynamic> userjson = dataList['data'];
    List<String>usernames=[];
    for(int i=0;i<userjson.length;i++){
usernames.add(userjson[i]['name']);
    }
    log('${usernames}');

   return usernames;
  } else {
    log(response.statusCode.toString());
    return [];
  }
}
