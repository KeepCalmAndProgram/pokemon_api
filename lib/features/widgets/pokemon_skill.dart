import 'package:flutter/material.dart';

class PokemonSkill extends StatelessWidget {
  const PokemonSkill({
    Key? key,
    required this.skill,
    required this.name,
  }) : super(key: key);

  final dynamic skill;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.green,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(5,8,8,5),
              child: Text(
                '$name',
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Text(
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            '$skill',
          ),
        ],
      ),
    );
  }
}
