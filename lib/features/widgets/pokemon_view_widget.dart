import 'package:flutter/material.dart';
import 'package:pokemon_api/repositories/models/pokemon_api.dart';

class PokemonView extends StatelessWidget {
  const PokemonView({
    Key? key,
    required this.width,
    required this.height,
    required this.pokemon,
  }) : super(key: key);

  final double width;
  final double height;
  final PokemonAPi pokemon;

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          '/pokemon',
          arguments: pokemon,
        );
      },
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: Colors.amber,
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  pokemon.sprites.frontDefault,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              child: Text(pokemon.name),
            ),
          ],
        ),
      ),
    );
  }
}
