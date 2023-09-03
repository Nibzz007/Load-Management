import 'package:load_management/core/api_request_maker.dart';
import 'package:load_management/core/endpoints.dart';
import 'package:load_management/src/model/irrigation_model/get_irrigation_method_model.dart';
import 'package:load_management/src/model/irrigation_model/irrigation_method_model.dart';

class IrrigationRepository {
  Future<IrrigationMethodModel?> getIrrigaitoMethods() async {
    return await ApiResponse.getMaker(
        endpoint: EndPoints.getIrrigationMethodList,
        fromJson: IrrigationMethodModel.fromJson);
  }

  Future<IrrigationMethodInfoModel?> getIrrigationMethodInfo(
      {required String id}) async {
    return await ApiResponse.getMaker(
        endpoint: EndPoints.getIrrigationMethodInfo(id: id),
        fromJson: IrrigationMethodInfoModel.fromJson);
  }
}
