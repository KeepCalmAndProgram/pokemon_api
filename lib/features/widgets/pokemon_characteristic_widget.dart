import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_api/features/widgets/pokemon_skill.dart';
import 'package:pokemon_api/repositories/models/pokemon_api.dart';

class PokemonCharacteristicWidget extends StatelessWidget {
  const PokemonCharacteristicWidget({
    Key? key,
    required this.pokemon,
    required this.pokemonStats,
  }) : super(key: key);

  final PokemonAPi pokemon;
  final pokemonStats;

  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).size.width / 3,
        height: MediaQuery.of(context).size.height / 3.1,
        child: GridView.builder(
          itemCount: pokemonStats.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 2.5,
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(10.0),
              child: PokemonSkill(
                skill: pokemon.stats[index].baseStat,
                name: pokemon.stats[index].stat.name,
              ),
            );
          },
        ),
      ),
    );
  }
}
