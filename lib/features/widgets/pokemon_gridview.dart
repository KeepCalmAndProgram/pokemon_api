import 'package:flutter/material.dart';
import 'package:pokemon_api/features/widgets/pokemon_view_widget.dart';

class PokemonGridView extends StatelessWidget {
  const PokemonGridView({
    Key? key,
    required this.pokemonList,
  }) : super(key: key);

  final pokemonList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pokemonList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1,
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        final pokemon = pokemonList[index];
        return Container(
          padding: const EdgeInsets.all(10.0),
          child: PokemonView(
            width: double.infinity,
            height: double.infinity,
            pokemon: pokemon,
          ),
        );
      },
    );
  }
}