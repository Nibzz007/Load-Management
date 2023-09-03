import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:load_management/core/endpoints.dart';

class ApiResponse {
  static Future<ModelClass?> getMaker<ModelClass>(
      {required String endpoint,
      required ModelClass Function(Map<String, dynamic>) fromJson}) async {
    http.Response response =
        await http.get(Uri.parse(EndPoints.baseUrl + endpoint));
    if (response.statusCode == 200) {
      ModelClass data = fromJson(jsonDecode(response.body));
      return data;
    } else {
      return null;
    }
  }

  static Future<T?> postMaker<T>(String endpoint, Map<String, dynamic> data,
      T Function(Map<String, dynamic>) fromJson) async {
    final jsonData = jsonEncode(data);

    http.Response response =
        await http.post(Uri.parse(endpoint), body: jsonData);

    if (response.statusCode == 200) {
      T result = fromJson(jsonDecode(response.body));
      return result;
    } else {
      return null;
    }
  }
}
