import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'features/Theme/greyTheme.dart';
import 'features/router/router.dart';

class PokemonListApp extends StatelessWidget {
  const PokemonListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Pokemon Api",
      theme: grayTheme,
      routes: routes,
    );
  }
}