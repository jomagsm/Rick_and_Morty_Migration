List<String> months = [
  "января",
  "февраля",
  "марта",
  "апреля",
  "мая",
  "июня",
  "июля",
  "августа",
  "сентября",
  "октября",
  "ноября",
  "декабря"
];

class Episode {
  Episode({
    this.id,
    this.name,
    this.season,
    this.series,
    this.plot,
    this.premiere,
    this.imageName,
    this.characters,
  });

  final String? id;
  final String? name;
  final int? season;
  final int? series;
  final String? plot;
  final DateTime? premiere;
  final String? imageName;
  final dynamic characters;

  factory Episode.fromJson(Map<String, dynamic> json) => Episode(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        season: json["season"] == null ? null : json["season"],
        series: json["series"] == null ? null : json["series"],
        plot: json["plot"] == null ? null : json["plot"],
        premiere:
            json["premiere"] == null ? null : DateTime.parse(json["premiere"]),
        imageName: json["imageName"] == null ? null : json["imageName"],
        characters: json["characters"] == null ? null : json["characters"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "season": season,
        "series": series,
        "plot": plot,
        "premiere": premiere!.toIso8601String(),
        "imageName": imageName,
        "characters": characters,
      };

  getDateToRuMonth() {
    return "${premiere!.day} ${months[premiere!.month - 1]} ${premiere!.year}";
  }
}