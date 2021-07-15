class PlaceOfBirth {
  final String? id;
  String? name;
  String? type;
  String? measurements;
  String? about;
  String? imageName;
  List<dynamic>? characters;
  List<dynamic>? placeOfBirthCharacters;

  PlaceOfBirth({
    this.id,
    this.name,
    this.type,
    this.measurements,
    this.about,
    this.imageName,
    this.characters,
    this.placeOfBirthCharacters,
  });

  factory PlaceOfBirth.fromJson(Map<String, dynamic> json) => PlaceOfBirth(
        id: json["id"],
        name: json["name"],
        type: json["type"],
        measurements: json["measurements"],
        about: json["about"],
        imageName: json["imageName"],
        characters: List<dynamic>.from(json["characters"].map((x) => x)),
        placeOfBirthCharacters:
            List<dynamic>.from(json["placeOfBirthCharacters"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "type": type,
        "measurements": measurements,
        "about": about,
        "imageName": imageName,
        "characters": List<dynamic>.from(characters!.map((x) => x)),
        "placeOfBirthCharacters":
            List<dynamic>.from(placeOfBirthCharacters!.map((x) => x)),
      };
}

distributePlaceOfBirthClass(json) {
  PlaceOfBirth placeOfBirth;
  if (json['placeOfBirth'].runtimeType != String) {
    placeOfBirth = PlaceOfBirth.fromJson(json['placeOfBirth']);
  } else {
    placeOfBirth =
        PlaceOfBirth(id: json['placeOfBirthId'], name: json['placeOfBirth']);
  }
  return placeOfBirth;
}