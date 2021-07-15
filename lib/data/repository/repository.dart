
import 'package:rick_and_morty_null_safety/data/server_api/models/characters/character_model.dart';
import 'package:rick_and_morty_null_safety/data/server_api/models/characters/characters_model.dart';
import 'package:rick_and_morty_null_safety/data/server_api/models/locations_response/locations_response_model.dart';
import 'package:rick_and_morty_null_safety/data/server_api/server_api.dart';


class Repository {
  final _serviceApi = ServerApi();
  // Получение списка персонажей
  
  
  
  Future<CharactersModel> getCharacters() async {
    try {
      final response = await _serviceApi.getCharacters();
      return response;
    } catch (e) {
      throw (e);
    }
  }

 
  Future<Character?> getCharacter(String? id) async {
    final response = await _serviceApi.getCharacter(id);
    return response;
  }

  Future<LocationResponse?> getLocations() async {
    try {
      final response = await _serviceApi.getLocations();
      return response;
    } catch (e) {
      throw (e);
    }
  }
}