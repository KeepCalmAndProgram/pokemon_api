import 'package:dio/dio.dart';
import 'package:pokemon_api/repositories/models/pokemon_api.dart';

class PokemonApiRepository {
  Future<List<PokemonApi>> fetchPokemonList() async {
    final response = await Dio().get('https://pokeapi.co/api/v2/pokemon');

    final List<Future> futures = [];

    final data = response.data as Map<String, dynamic>;

    final pokemonList = data['results']
        .map((e) => (e as Map<String, dynamic>)['name'] as String?)
        .toList();

    for (final pokemon in pokemonList) {
      if (pokemon == null) {
        continue;
      }

      futures.add(Dio().get('https://pokeapi.co/api/v2/pokemon/$pokemon'));
    }

    final responses = await Future.wait(futures);
    final result = responses.map((e) {
      final data = e.data as Map<String, dynamic>;
      return PokemonApi.fromJson(data);
    }).toList();

    return result;
  }
}
