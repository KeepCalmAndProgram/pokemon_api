import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:pokemon_api/repositories/interface_pokemon_repository.dart';
import 'package:pokemon_api/repositories/pokemonApi/pockemon_api_repository.dart';

final getIt = GetIt.instance;

void injector() {
  getIt.registerLazySingleton<PokemonRepository>( () => PokemonApiRepository(dio: Dio()));
}

