import 'package:flutter/material.dart';
import 'package:pokemon_api/repositories/models/pockemon_api.dart';

class PockemonView extends StatelessWidget {
  const PockemonView({
    Key? key,
    required this.width,
    required this.height,
    required this.pockemon,
  }) : super(key: key);

  final double width;
  final double height;
  final PockemonAPi pockemon;

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          '/pockemon',
          arguments: pockemon,
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
                  pockemon.stats[0].stat.name,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  pockemon.sprites.frontDefault,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(bottom: 10, child: Text(pockemon.name)),
          ],
        ),
      ),
    );
  }
}
