import 'dart:convert';
import 'package:http/http.dart';

class NetworkDataProvider {
  NetworkDataProvider._();

  static final instance = NetworkDataProvider._();

  Map<String, String> get headers {
    return {
      'Content-type': 'application/json; charset=UTF-8',
    };
  }

  Future<String?> GET(String baseUrl, String api, {required Map<String, dynamic> params}) async {
    Uri url = Uri.https(baseUrl, api, params);
    Response response = await get(url, headers: headers);
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    }
    return null;
  }

  Future<String?> POST(String baseUrl, String api, Map<String, dynamic>? body) async {
    Uri url = Uri.https(baseUrl, api);
    Response response =
        await post(url, headers: headers, body: jsonEncode(body));
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    }
    return null;
  }

  Future<String?> PUT(String baseUrl, String api, Map<String, dynamic>? body) async {
    Uri url = Uri.https(baseUrl, api);
    Response response =
        await put(url, headers: headers, body: jsonEncode(body));
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    }
    return null;
  }

  Future<String?> DELETE(String baseUrl, String api, {Map<String, String>? params}) async {
    Uri url = Uri.https(baseUrl, api, params);
    Response response = await delete(url, headers: headers);
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    }
    return null;
  }

  Map<String, dynamic> paramsLocation(String location) {
    Map<String, dynamic> params = {};
    params.addAll({'region': location});
    return params;
  }
}
