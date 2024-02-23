import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:pokemon_api/features/widgets/pokemon_view_widget.dart';
import 'package:pokemon_api/repositories/interface_pokemon_repository.dart';
import 'package:pokemon_api/repositories/models/pokemon_api.dart';
import 'package:pokemon_api/bloc/pokemon_bloc.dart';

class PokemonListScreen extends StatefulWidget {
  const PokemonListScreen({Key? key}) : super(key: key);

  @override
  State<PokemonListScreen> createState() => _PokemonListScreenState();
}

class _PokemonListScreenState extends State<PokemonListScreen> {
  late final Future<List<PokemonAPi>> _pokemonListFuture;

  final _pokemonBloc =
      PokemonBloc(GetIt.instance<InterfacePokemonRepository>());

  @override
  void initState() {
    _pokemonBloc.add(LoadPokemonList());
    //_pokemonListFuture = GetIt.instance<InterfacePokemonRepository>().fetchPokemonList();
    //PokemonApiRepository(dio: Dio()).fetchPokemonList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Pokemon Api"),
      ),
      body: BlocBuilder<PokemonBloc, PokemonState>(
        bloc: _pokemonBloc,
        builder: (context, state) {
          if (state is PokemonLoaded) {
            return FutureBuilder(
              future: pokemonList,//_pockemonListFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (snapshot.hasError) {
                  return Center(
                    child: Text(
                      'Error: ${snapshot.error}',
                      style: theme.textTheme.bodyMedium,
                    ),
                  );
                }

                final pokemonList = snapshot.data as List<PokemonAPi>;

                return GridView.builder(
                  itemCount: pokemonList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    final pokemon = pokemonList[index];
                    return Container(
                      padding: EdgeInsets.all(20.0),
                      child: PokemonView(
                          width: double.infinity,
                          height: double.infinity,
                          pokemon: pokemon),
                    );
                  },
                );
              },
            );
          }
          return Container();
        },
      ),
    );
  }
}

/*FutureBuilder(
              future: _pockemonListFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (snapshot.hasError) {
                  return Center(
                    child: Text(
                      'Error: ${snapshot.error}',
                      style: theme.textTheme.bodyMedium,
                    ),
                  );
                }

                final pokemonList = snapshot.data as List<PockemonAPi>;

                return GridView.builder(
                  itemCount: pokemonList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    final pockemon = pokemonList[index];
                    return Container(
                      padding: EdgeInsets.all(20.0),
                      child: PockemonView(
                          width: double.infinity,
                          height: double.infinity,
                          pockemon: pockemon),
                    );
                  },
                );
              },
            );*/
