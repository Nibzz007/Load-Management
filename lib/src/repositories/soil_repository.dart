import 'package:load_management/core/api_request_maker.dart';
import 'package:load_management/core/endpoints.dart';
import 'package:load_management/src/model/soil_model/get_soil_info_model.dart';
import 'package:load_management/src/model/soil_model/get_soil_type_model.dart';

class SoilRepository {
  Future<AllSoilTypeModel?> getAllSoil() async {
    return await ApiResponse.getMaker(
        endpoint: EndPoints.getSoilList, fromJson: AllSoilTypeModel.fromJson);
  }

  Future<SoilInfoModel?> getSoilInfo({required String id}) async {
    return await ApiResponse.getMaker(
        endpoint: EndPoints.getSoilInfo(id: id),
        fromJson: SoilInfoModel.fromJson);
  }
}
