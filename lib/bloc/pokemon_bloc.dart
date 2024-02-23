import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:pokemon_api/repositories/interface_pokemon_repository.dart';

import 'package:pokemon_api/repositories/models/pokemon_api.dart';

part 'pokemon_event.dart';
part 'pokemon_state.dart';


class PokemonBloc extends Bloc<PokemonEvent, PokemonState>{
  PokemonBloc(this.pokemonRepository) : super (PokemonInitial()) {
    on <LoadPokemonList>((event, emit) async{
      try {
        emit(PokemonLoadding());
        final pokemonListFuture = await pokemonRepository.fetchPokemonList();
        emit(PokemonLoaded(pokemonList: pokemonListFuture));
      }catch (e) {
        emit(PokemonLoadingFailure(exeption: e));
      }
      finally {
        //completer.complete();
      }
    });
  }

  final PokemonRepository pokemonRepository;
}