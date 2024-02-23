import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pokemon_api/pokemon_list_app.dart';
import 'package:pokemon_api/repositories/interface_pokemon_repository.dart';
import 'package:pokemon_api/repositories/pokemonApi/pockemon_api_repository.dart';

void main() {
  GetIt.instance.registerLazySingleton<InterfacePokemonRepository>( () => PokemonApiRepository(dio: Dio()));
  runApp(const PockemonListApp());
}