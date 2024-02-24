import 'pokemon_characteristic.dart';

class PokemonCharacteristicElement {
  final int baseStat;
  final int effort;
  final PokemonCharacteristic stat;

  PokemonCharacteristicElement({
    required this.baseStat,
    required this.effort,
    required this.stat,
  });

  factory PokemonCharacteristicElement.fromJson(Map<String, dynamic> json) =>
      PokemonCharacteristicElement(
        baseStat: json["base_stat"],
        effort: json["effort"],
        stat: PokemonCharacteristic.fromJson(json["stat"]),
      );

  Map<String, dynamic> toJson() => {
        "base_stat": baseStat,
        "effort": effort,
        "stat": stat.toJson(),
      };
}
