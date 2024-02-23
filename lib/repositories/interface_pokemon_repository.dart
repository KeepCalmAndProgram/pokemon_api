import 'models/pokemon_api.dart';

abstract class PokemonRepository {
  Future <List<PokemonAPi>> fetchPokemonList();
}