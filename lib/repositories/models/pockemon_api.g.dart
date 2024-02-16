// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pockemon_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PockemonAPi _$PockemonApiFromJson(Map<String, dynamic> json) => PockemonAPi(
    abilities: List<AbilityElement>.from(json["abilities"].map((x) => AbilityElement.fromJson(x))),
    baseExperience: json["base_experience"] as int,
    height: json["height"] as int,
    id: json["id"] as int,
    weight: json["weight"] as int,
    locationAreaEncounters: json["location_area_encounters"] as String,
    name: json["name"] as String,
    //sprites: Sprites.fromJson(json["sprites"]),
);

Map<String, dynamic> _$PockemonApiToJson(PockemonAPi instance) =>
    <String, dynamic>{
      "abilities": List<dynamic>.from(instance.abilities.map((x) => x.toJson())),
      "base_experience": instance.baseExperience,
      "height": instance.height,
      "id": instance.id,
      "weight": instance.weight,
      "location_area_encounters": instance.locationAreaEncounters,
      "name": instance.name,
      //"sprites": instance.sprites.toJson(),
    };

