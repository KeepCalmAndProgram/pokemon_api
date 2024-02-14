import 'package:flutter/material.dart';
import 'package:pokemon_api/features/widgets/list_tile_widget.dart';

import 'package:pokemon_api/repositories/pokemonApi/pokemon_api_repository.dart';

import '../../repositories/models/pokemon_api.dart';



class PokemonListScreen extends StatefulWidget {
  const PokemonListScreen({Key? key}) : super(key: key);

  @override
  State<PokemonListScreen> createState() => _PokemonListScreenState();
}

class _PokemonListScreenState extends State<PokemonListScreen> {
  List<PokemonApi>? _pokemonApi;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pokemon Api"),
      ),
      body: (_pokemonApi == null) ? const SizedBox() : ListView.separated(
        itemCount: _pokemonApi!.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, i){
          final pokemon = _pokemonApi![i];
          final pokemonName = pokemon.name;

          return ListTileWidget(pokemon: pokemon);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          _pokemonApi = await PokemonApiRepository().getPockemonApiList();
        },
      ),
    );
  }
}