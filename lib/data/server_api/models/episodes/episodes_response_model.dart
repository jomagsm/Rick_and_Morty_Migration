// To parse this JSON data, do
//
//     final episodeResponse = episodeResponseFromJson(jsonString);

import 'dart:convert';

import 'package:rick_and_morty_null_safety/data/server_api/models/characters/episode_model.dart';

EpisodeResponse episodeResponseFromJson(String str) => EpisodeResponse.fromJson(json.decode(str));

String episodeResponseToJson(EpisodeResponse data) => json.encode(data.toJson());

class EpisodeResponse {
    EpisodeResponse({
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
    List<Episode>? data;

    factory EpisodeResponse.fromJson(Map<String, dynamic> json) => EpisodeResponse(
        totalRecords: json["totalRecords"],
        succeeded: json["succeeded"],
        message: json["message"],
        error: json["error"],
        data: List<Episode>.from(json["data"].map((x) => Episode.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "totalRecords": totalRecords,
        "succeeded": succeeded,
        "message": message,
        "error": error,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

