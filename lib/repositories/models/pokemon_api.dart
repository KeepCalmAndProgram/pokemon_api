import 'package:json_annotation/json_annotation.dart';
import 'pokemon_characteristic_element.dart';
import 'pokemon_sprites.dart';

part 'pokemon_api.g.dart';

@JsonSerializable()
class PokemonAPi {
  const PokemonAPi({
    required this.stats,
    required this.height,
    required this.id,
    required this.weight,
    required this.name,
    required this.sprites,
  });

  final List<PokemonCharacteristicElement> stats;
  final int height;
  final int id;
  final int weight;
  final String name;
  final PokemonSprites sprites;

  factory PokemonAPi.fromJson(Map<String, dynamic> json) =>
      _$PokemonAPiFromJson(json);
}
