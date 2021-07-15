// To parse this JSON data, do
//
//     final locationResponse = locationResponseFromJson(jsonString);

import 'dart:convert';

import 'package:rick_and_morty_null_safety/data/server_api/models/main_models/location_model.dart';



LocationsResponse locationsResponseFromJson(String str) => LocationsResponse.fromJson(json.decode(str));

String locationsResponseToJson(LocationsResponse data) => json.encode(data.toJson());

class LocationsResponse {
    LocationsResponse({
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

    factory LocationsResponse.fromJson(Map<String, dynamic> json) => LocationsResponse(
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