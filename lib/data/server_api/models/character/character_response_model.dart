import 'dart:convert';

import 'package:rick_and_morty_null_safety/data/server_api/models/characters/character_model.dart';


CharacterResponseModel characterResponseModelFromJson(String str) =>
    CharacterResponseModel.fromJson(json.decode(str));

String characterResponseModelToJson(CharacterResponseModel data) =>
    json.encode(data.toJson());

class CharacterResponseModel {
  CharacterResponseModel({
    this.succeeded,
    this.message,
    this.error,
    this.data,
  });

  bool? succeeded;
  dynamic message;
  dynamic error;
  Character? data;

  factory CharacterResponseModel.fromJson(Map<String, dynamic> json) =>
      CharacterResponseModel(
        succeeded: json["succeeded"],
        message: json["message"],
        error: json["error"],
        data: Character.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "succeeded": succeeded,
        "message": message,
        "error": error,
        "data": data!.toJson(),
      };
}