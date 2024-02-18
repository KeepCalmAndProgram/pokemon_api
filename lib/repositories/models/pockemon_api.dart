import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

import 'json_files/ability_element.dart';
import 'json_files/sprites.dart';

part 'pockemon_api.g.dart';

@JsonSerializable()
class PockemonAPi {
  const PockemonAPi({
    required this.abilities,
    required this.baseExperience,
    required this.height,
    required this.id,
    required this.weight,
    required this.locationAreaEncounters,
    required this.name,
    required this.sprites,
  });

  final List<AbilityElement> abilities;
  final int baseExperience;
  final int height;
  final int id;
  final int weight;
  final String locationAreaEncounters;
  final String name;
  final Sprites sprites;

  factory PockemonAPi.fromJson(Map<String, dynamic> json) =>
      _$PockemonApiFromJson(json);
}
