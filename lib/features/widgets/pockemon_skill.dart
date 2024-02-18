import 'package:flutter/material.dart';

import '../../repositories/models/pockemon_api.dart';

class PockemonSkill extends StatelessWidget {

  const PockemonSkill({
    Key? key,
    required this.skill,
    required this.letter,
  }) : super(key: key);

  final dynamic skill;
  final String letter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
              onPressed: () {},
              child: Text(letter),
          ),
          Text('$skill'),
        ],
      ),
    );
  }
}
