
class Home {
  final String frontDefault;
  final String frontShiny;

  Home({
    required this.frontDefault,
    required this.frontShiny,
  });

  factory Home.fromJson(Map<String, dynamic> json) => Home(
    frontDefault: json["front_default"],
    frontShiny: json["front_shiny"],
  );

  Map<String, dynamic> toJson() => {
    "front_default": frontDefault,
    "front_shiny": frontShiny,
  };
}