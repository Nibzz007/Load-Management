class EndPoints {
  static const String baseUrl = "http://16.170.162.147/api/v1/pocra";

  static const String getCropList = "/api/v1/pocra/crops";
  static const String getSoilList = "/api/v1/pocra/soil-types";
  static const String getIrrigationMethodList =
      "/api/v1/pocra/irrigation-methods";

  static String getCropInfo({required String id}) {
    return "/api/v1/pocra/crops/$id";
  }

  static String getSoilInfo({required String id}) {
    return "/api/v1/pocra/soil-types/$id";
  }

  static String getIrrigationMethodInfo({required String id}) {
    return "/api/v1/pocra/irrigation-methods/$id";
  }
}
