import 'package:json_annotation/json_annotation.dart';

import 'json_files/stat_element.dart';
import 'json_files/sprites.dart';

part 'pockemon_api.g.dart';

@JsonSerializable()
class PockemonAPi {
  const PockemonAPi({
    required this.stats,
    required this.height,
    required this.id,
    required this.weight,
    required this.name,
    required this.sprites,
  });

  final List<StatElement> stats;
  final int height;
  final int id;
  final int weight;
  final String name;
  final Sprites sprites;

  factory PockemonAPi.fromJson(Map<String, dynamic> json) =>
      _$PockemonAPiFromJson(json);
}