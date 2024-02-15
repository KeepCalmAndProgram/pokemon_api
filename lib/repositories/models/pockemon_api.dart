import 'dart:ui';

import 'package:json_annotation/json_annotation.dart';

part 'pockemon_api.g.dart';

@JsonSerializable()
class PockemonApi {
  const PockemonApi({
    required this.name,
    required this.weight,
    required this.height,
    required this.sprites,
  });

  final String name;
  final Map<String, dynamic> sprites;
  final double weight;
  final double height;

  factory PockemonApi.fromJson(Map<String, dynamic> json) =>
      _$PockemonApiFromJson(json);
}
