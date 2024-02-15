// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pockemon_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PockemonApi _$PockemonApiFromJson(Map<String, dynamic> json) => PockemonApi(
      name: json['name'] as String,
      weight: (json['weight'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
      sprites: (json['sprites'] as Map).cast(),
    );


Map<String, dynamic> _$PockemonApiToJson(PockemonApi instance) =>
    <String, dynamic>{
      'name': instance.name,
      'weight': instance.weight,
      'height': instance.height,
      'sprites': instance.sprites,
    };
