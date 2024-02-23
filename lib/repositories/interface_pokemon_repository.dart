import 'models/pokemon_api.dart';

abstract class InterfacePokemonRepository {
  Future <List<PokemonAPi>> fetchPokemonList();
}