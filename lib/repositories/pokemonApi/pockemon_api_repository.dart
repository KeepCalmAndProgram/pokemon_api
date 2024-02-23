import 'package:dio/dio.dart';
import 'package:pokemon_api/repositories/interface_pokemon_repository.dart';
import 'package:pokemon_api/repositories/models/pokemon_api.dart';

class PokemonApiRepository implements PokemonRepository {
  PokemonApiRepository({required this.dio});

  late final Dio dio;

  @override
  Future<List<PokemonAPi>> fetchPokemonList() async {
    final response = await dio.get('https://pokeapi.co/api/v2/pokemon');

    final List<Future> futuresPokemon = [];

    final data = response.data as Map<String, dynamic>;

    final pokemonList = data['results']
        .map((e) => (e as Map<String, dynamic>)['name'] as String?)
        .toList();

    for (final pokemon in pokemonList) {
      if (pokemon == null) {
        continue;
      }
      futuresPokemon
          .add(Dio().get('https://pokeapi.co/api/v2/pokemon/$pokemon'));
    }

    final responses = await Future.wait(futuresPokemon);
    final result = responses.map((e) {
      final data = e.data as Map<String, dynamic>;
      return PokemonAPi.fromJson(data);
    }).toList();
    return result;
  }
}
