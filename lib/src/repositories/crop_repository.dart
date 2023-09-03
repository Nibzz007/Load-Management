import 'package:load_management/core/api_request_maker.dart';
import 'package:load_management/core/endpoints.dart';
import 'package:load_management/src/model/crop_model/get_crop_info_model.dart';
import 'package:load_management/src/model/crop_model/get_crop_list._model.dart';

class CropRepository {
  Future<AllCropListModel?> getAllCropList() async {
    return await ApiResponse.getMaker(
        endpoint: EndPoints.getCropList, fromJson: AllCropListModel.fromJson);
  }

  Future<CropInfoModel?> getCropInfo({required String id}) async {
    return await ApiResponse.getMaker(
        endpoint: EndPoints.getCropInfo(id: id),
        fromJson: CropInfoModel.fromJson);
  }
}
