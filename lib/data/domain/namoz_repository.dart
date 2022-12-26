import 'dart:convert';

import 'package:iyman_uz/data/model/namoz_hours.dart';

import '../configuration/api_constants.dart';
import '../data_provider/network_data_provider.dart';

class NamozRepository{
  NamozHours? response;
  bool isDataVisible = false;
  late NetworkDataProvider networkProvider;

  NamozRepository._() {
    networkProvider = NetworkDataProvider.instance;
  }

  static final instance = NamozRepository._();

  Future<NamozHours?> getAllTimes() async {
    String? body = await networkProvider.GET(
        ApiConstants.baseUrl,
        ApiConstants.apiAllTimes,
        params: networkProvider.paramsLocation("Toshkent"),
    );
    if(body != null) {
      Map<String, dynamic> json = jsonDecode(body);
      response = NamozHours.fromJson(json);
      isDataVisible = true;
    }
    return response;
  }
}