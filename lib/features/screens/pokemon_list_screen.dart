import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:pokemon_api/features/widgets/pokemon_exeption_dialog.dart';
import 'package:pokemon_api/repositories/interface_pokemon_repository.dart';
import 'package:pokemon_api/bloc/pokemon_bloc.dart';
import 'package:pokemon_api/features/widgets/pokemon_gridview.dart';

class PokemonListScreen extends StatefulWidget {
  const PokemonListScreen({Key? key}) : super(key: key);

  @override
  State<PokemonListScreen> createState() => _PokemonListScreenState();
}

class _PokemonListScreenState extends State<PokemonListScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PokemonBloc(GetIt.instance<PokemonRepository>())
        ..add(
          LoadPokemonList(),
        ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Pokemon Api"),
        ),
        body: Builder(
          builder: (context) {
            return RefreshIndicator(
              onRefresh: () async {
                context.read<PokemonBloc>().add(LoadPokemonList());
              },
              child: BlocConsumer<PokemonBloc, PokemonState>(
                listener: (context, state) {
                  if (state is PokemonLoadingFailure) {
                    showDialog(
                      context: context,
                      builder: (_) => PokemonExeptionDialog(
                        title: 'Exception',
                        body: state.exception.toString(),
                      ),
                    );
                  }
                },
                builder: (context, state) {
                  if (state is PokemonLoaded) {
                    final pokemonList = state.pokemonList;
                    return PokemonGridView(pokemonList: pokemonList);
                  }
                  return const Center(child: CircularProgressIndicator());
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
