import 'package:json_annotation/json_annotation.dart';

part 'pokemon_api.g.dart';

@JsonSerializable()
class PokemonApi {
  const PokemonApi({
    required this.name,
    required this.weight,
    required this.height,
  });

  final String name;
  final double weight;
  final double height;

  factory PokemonApi.fromJson(Map<String, dynamic> json) =>
      _$PokemonApiFromJson(json);
}
