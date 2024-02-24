class PokemonSprites {
  final String frontDefault;
  final String backDefault;
  final String frontShiny;
  final String backShiny;

  PokemonSprites({
    required this.frontDefault,
    required this.backDefault,
    required this.frontShiny,
    required this.backShiny,
  });

  factory PokemonSprites.fromJson(Map<String, dynamic> json) => PokemonSprites(
        frontDefault: json["front_default"],
        backDefault: json["back_default"],
        frontShiny: json["front_shiny"],
        backShiny: json["back_shiny"],
      );

  Map<String, dynamic> toJson() => {
        "front_default": frontDefault,
        "back_default": backShiny,
        "front_shiny": frontShiny,
        "back_shiny": backShiny,
      };
}
