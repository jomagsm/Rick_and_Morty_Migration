import 'dart:convert';

import 'character_model.dart';


CharactersModel charactersModelFromJson(String str) =>
    CharactersModel.fromJson(json.decode(str));

String charactersModelToJson(CharactersModel data) =>
    json.encode(data.toJson());

class CharactersModel {
  CharactersModel({
    this.totalRecords,
    this.succeeded,
    this.message,
    this.error,
    this.data,
  });

  int? totalRecords;
  bool? succeeded;
  dynamic? message;
  dynamic? error;
  List<Character>? data;

  factory CharactersModel.fromJson(Map<String, dynamic> json) =>
      CharactersModel(
        totalRecords: json["totalRecords"],
        succeeded: json["succeeded"],
        message: json["message"],
        error: json["error"],
        data: List<Character>.from(
            json["data"].map((x) => Character.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "totalRecords": totalRecords,
        "succeeded": succeeded,
        "message": message,
        "error": error,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };

  findCharacters(String value) {
    List<Character> findCharactersList = [];
    if (value == '') {
      return data;
    }
    for (var i in data!) {
      if (i.fullName!.trim().toLowerCase().indexOf(value.toLowerCase()) != -1) {
        findCharactersList.add(i);
      }
    }
    return findCharactersList;
  }
}