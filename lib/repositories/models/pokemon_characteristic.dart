class PokemonCharacteristic {
  final String name;
  final String url;

  PokemonCharacteristic({
    required this.name,
    required this.url,
  });

  factory PokemonCharacteristic.fromJson(Map<String, dynamic> json) =>
      PokemonCharacteristic(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}
