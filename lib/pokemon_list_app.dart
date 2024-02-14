import 'package:flutter/material.dart';
import 'package:pokemon_api/router/router.dart';
import 'package:pokemon_api/theme/greyTheme.dart';


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