part of 'pokemon_bloc.dart';

class PokemonState {}

class PokemonInitial extends PokemonState {}

class PokemonLoadding extends PokemonState {}

class PokemonLoaded extends PokemonState {
  PokemonLoaded({
    required this.pokemonList,
  });

  final List<PokemonAPi> pokemonList;
}

class PokemonLoadingFailure extends PokemonState {
  PokemonLoadingFailure({
    required this.exeption,
  });

  final dynamic exeption;
}
