import 'package:dio/dio.dart';

import 'dio_settings.dart';
import 'models/main_models/character_model.dart';
import 'models/response_model/character_response_model.dart';
import 'models/response_model/characters_model.dart';
import 'models/response_model/location_response_model.dart';
import 'models/response_model/locations_response_model.dart';

class ServerApi {
  static ServerApi _instance = new ServerApi.internal();

  factory ServerApi() => _instance;

  ServerApi.internal() {
    _dioSettings = DioSettings();
    _dio = _dioSettings.dio;
  }

  late DioSettings _dioSettings;
  late Dio _dio;

  late Map<String, dynamic> _request;

  Future<CharactersModel> getCharacters() async {
    try {
      Response<String> response = await _dio.get("/api/Characters/GetAll",
          queryParameters: {"PageNumber": 1, "PageSize": 200});
      return charactersModelFromJson(response.toString());
    } catch (e) {
      throw e;
    }
  }

  Future<Character?> getCharacter(String? id) async {
    try {
      Response<String> response = await _dio.get("/api/Characters/GetById",
          queryParameters: {"id": id});
      return characterResponseModelFromJson(response.toString()).data;
    } catch (e) {
      throw e;
    }
  }

  Future<LocationsResponse?> getLocations() async {
    try {
      Response<String> response = await _dio.get("/api/Locations/GetAll",
          queryParameters: {"PageNumber": 1, "PageSize": 200});
          return locationsResponseFromJson(response.toString());
    } catch (e) {
      throw e;
    }
  }


Future<LocationResponse?> getLocationById(String? id) async {
    try {
      Response<String> response = await _dio.get("/api/Locations/GetById",
          queryParameters: {"id": id});
          return locationResponseFromJson(response.toString());
    } catch (e) {
      throw e;
    }
  }
}
