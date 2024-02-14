import 'package:dio/dio.dart';
import '../models/pokemon_api.dart';

class PokemonApiRepository {
  Future<List<PokemonApi>> getPockemonApiList() async {
    final response = await Dio().get('https://pokeapi.co/api/v2/pokemon');

    final data = response.data as Map<String, dynamic>;
    final pokemonList = data.entries
        .map((e) => PokemonApi(
              name: (e.value as Map<String, dynamic>)['name'],
              weight: (e.value as Map<String, dynamic>)['url'],
              imageUrl: (e.value as Map<String, dynamic>)['url'],
            ))
        .toList();
    return pokemonList;
  }
}