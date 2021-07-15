// To parse this JSON data, do
//
//     final locationResponse = locationResponseFromJson(jsonString);

import 'dart:convert';

import 'package:rick_and_morty_null_safety/data/server_api/models/main_models/location_model.dart';

LocationResponse locationResponseFromJson(String str) => LocationResponse.fromJson(json.decode(str));

// String locationResponseToJson(LocationResponse data) => json.encode(data.toJson());

class LocationResponse {
    LocationResponse({
        this.succeeded,
        this.message,
        this.error,
        this.data,
    });

    bool? succeeded;
    dynamic message;
    dynamic error;
    Location? data;

    factory LocationResponse.fromJson(Map<String, dynamic> json) => LocationResponse(
        succeeded: json["succeeded"],
        message: json["message"],
        error: json["error"],
        data: Location.fromJson(json["data"]),
    );

    // Map<String, dynamic> toJson() => {
    //     "succeeded": succeeded,
    //     "message": message,
    //     "error": error,
    //     "data": Location.toJson(),
    // };
}
