// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pockemon_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PockemonAPi _$PockemonAPiFromJson(Map<String, dynamic> json) => PockemonAPi(
      stats: (json['stats'] as List<dynamic>)
          .map((e) => StatElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      height: json['height'] as int,
      id: json['id'] as int,
      weight: json['weight'] as int,
      name: json['name'] as String,
      sprites: Sprites.fromJson(json['sprites'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PockemonAPiToJson(PockemonAPi instance) =>
    <String, dynamic>{
      'stats': instance.stats,
      'height': instance.height,
      'id': instance.id,
      'weight': instance.weight,
      'name': instance.name,
      'sprites': instance.sprites,
    };