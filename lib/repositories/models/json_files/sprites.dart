import 'other.dart';

class Sprites {
  final String frontDefault;
  final String frontShiny;
  final Other other;

  Sprites({
    required this.frontDefault,
    required this.frontShiny,
    required this.other,
  });

  factory Sprites.fromJson(Map<String, dynamic> json) => Sprites(
    frontDefault: json["front_default"],
    frontShiny: json["front_shiny"],
    other: Other.fromJson(json["other"]),
  );

  Map<String, dynamic> toJson() => {
    "front_default": frontDefault,
    "front_shiny": frontShiny,
    "other": other.toJson(),
  };
}