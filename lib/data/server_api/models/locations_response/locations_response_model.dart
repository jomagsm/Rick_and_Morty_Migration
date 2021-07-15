// To parse this JSON data, do
//
//     final locationResponse = locationResponseFromJson(jsonString);

import 'dart:convert';

import 'package:rick_and_morty_null_safety/data/server_api/models/characters/character_model.dart';

LocationResponse locationResponseFromJson(String str) => LocationResponse.fromJson(json.decode(str));

String locationResponseToJson(LocationResponse data) => json.encode(data.toJson());

class LocationResponse {
    LocationResponse({
        this.totalRecords,
        this.succeeded,
        this.message,
        this.error,
        this.data,
    });

    int? totalRecords;
    bool? succeeded;
    dynamic message;
    dynamic error;
    List<Location>? data;

    factory LocationResponse.fromJson(Map<String, dynamic> json) => LocationResponse(
        totalRecords: json["totalRecords"],
        succeeded: json["succeeded"],
        message: json["message"],
        error: json["error"],
        data: List<Location>.from(json["data"].map((x) => Location.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "totalRecords": totalRecords,
        "succeeded": succeeded,
        "message": message,
        "error": error,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class Location {
    Location({
        this.id,
        this.name,
        this.type,
        this.measurements,
        this.about,
        this.imageName,
        this.characters,
        this.placeOfBirthCharacters,
    });

    String? id;
    String? name;
    String? type;
    String? measurements;
    String? about;
    String? imageName;
    List<Character>? characters;
    List<Character>? placeOfBirthCharacters;

    factory Location.fromJson(Map<String, dynamic> json) => Location(
        id: json["id"],
        name: json["name"],
        type: json["type"],
        measurements: json["measurements"],
        about: json["about"],
        imageName: json["imageName"],
        characters: List<Character>.from(json["characters"].map((x) => Character.fromJson(x))),
        placeOfBirthCharacters: List<Character>.from(json["placeOfBirthCharacters"].map((x) => Character.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "type": type,
        "measurements": measurements,
        "about": about,
        "imageName": imageName,
        "characters": List<dynamic>.from(characters!.map((x) => x.toJson())),
        "placeOfBirthCharacters": List<dynamic>.from(placeOfBirthCharacters!.map((x) => x.toJson())),
    };
}
