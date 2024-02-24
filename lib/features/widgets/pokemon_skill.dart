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
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 10, 10, 8),
              child: Text(
                '$name',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
          ),
          Text(
            style: Theme.of(context).textTheme.bodyText2,
            '$skill',
          ),
        ],
      ),
    );
  }
}
