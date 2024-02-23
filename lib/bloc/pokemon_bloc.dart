import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:pokemon_api/repositories/interface_pokemon_repository.dart';

import '../repositories/models/pokemon_api.dart';

part 'pokemon_event.dart';
part 'pokemon_state.dart';


class PokemonBloc extends Bloc<PokemonEvent, PokemonState>{
  PokemonBloc(this.pokemonRepository) : super (PokemonInitial()) {
    on <LoadPokemonList>((event, emit) async{
      final pokemonListFuture = await pokemonRepository.fetchPokemonList();
      emit(PokemonLoaded(pokemonList: pokemonListFuture));
    });
  }

  final InterfacePokemonRepository pokemonRepository;
}