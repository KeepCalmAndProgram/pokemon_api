// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonApi _$PokemonApiFromJson(Map<String, dynamic> json) => PokemonApi(
      name: json['name'] as String,
      weight: (json['weight'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
    );

Map<String, dynamic> _$PokemonApiToJson(PokemonApi instance) =>
    <String, dynamic>{
      'name': instance.name,
      'weight': instance.weight,
      'height': instance.height,
    };
