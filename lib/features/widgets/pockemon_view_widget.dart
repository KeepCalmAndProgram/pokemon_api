import 'package:flutter/material.dart';

import '../../repositories/models/pockemon_api.dart';

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
    return Stack(
      children: [
        GestureDetector(
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
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.lightBlueAccent,
            ),
            child: Image.network(
              'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}