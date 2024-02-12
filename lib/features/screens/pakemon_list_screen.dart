import 'package:flutter/material.dart';
import 'package:pokemon_api/features/widgets/list_tile_widget.dart';


class PokemonListScreen extends StatefulWidget {
  const PokemonListScreen({Key? key}) : super(key: key);

  @override
  State<PokemonListScreen> createState() => _PokemonListScreenState();
}

class _PokemonListScreenState extends State<PokemonListScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pokemon Api"),
      ),
      body: ListView.separated(
        itemCount: 15,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, i){
          const pokemonName = 'Pikacu';
          return ListTileWidget(pokemonName: pokemonName,);
        },
      ),
    );
  }
}