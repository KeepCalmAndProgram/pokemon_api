import 'package:flutter/material.dart';
import 'package:pokemon_api/features/widgets/list_tile_widget.dart';
import 'package:pokemon_api/repositories/models/pokemon_api.dart';
import 'package:pokemon_api/repositories/pokemonApi/pokemon_api_repository.dart';

class PokemonListScreen extends StatefulWidget {
  const PokemonListScreen({Key? key}) : super(key: key);

  @override
  State<PokemonListScreen> createState() => _PokemonListScreenState();
}

class _PokemonListScreenState extends State<PokemonListScreen> {
  late final Future<List<PokemonApi>> _pokemonListFuture;

  @override
  void initState() {
    super.initState();
    _pokemonListFuture = PokemonApiRepository().fetchPokemonList();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pokemon Api"),
      ),
      body: FutureBuilder(
          future: _pokemonListFuture,
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

            final pokemonList = snapshot.data as List<PokemonApi>;
            return ListView.builder(
              itemCount: pokemonList.length,
              itemBuilder: (context, index) {
                final pokemon = pokemonList[index];
                return ListTileWidget(pokemon: pokemon);
              },
            );
          }),
    );
  }
}
