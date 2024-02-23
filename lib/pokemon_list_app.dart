import 'package:flutter/material.dart';
import 'package:pokemon_api/common/theme.dart';
import 'package:pokemon_api/router/router.dart';

class PockemonListApp extends StatelessWidget {
  const PockemonListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Pockemon Api",
      theme: pokemonTheme,
      routes: routes,
    );
  }
}