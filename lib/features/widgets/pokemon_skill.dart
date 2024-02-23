import 'package:flutter/material.dart';

class PokemonSkill extends StatelessWidget {
  const PokemonSkill({
    Key? key,
    required this.skill,
    required this.letter,
  }) : super(key: key);

  final dynamic skill;
  final String letter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text(letter),
          ),
          Text(
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              '$skill'),
        ],
      ),
    );
  }
}
