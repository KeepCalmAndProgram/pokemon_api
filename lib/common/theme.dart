import 'package:flutter/material.dart';

import 'colors.dart';

final pokemonTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: _colorScheme,
  textTheme: const TextTheme(
    bodyText1: TextStyle(
      color: Colors.white,
      fontSize: 14,
    ),
    headline4: TextStyle(
      color: Colors.white,
      fontSize: 20,
    ),
  ),
);

const _colorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: PokemonColor.primary,
  onPrimary: PokemonColor.onPrimary,
  onSecondary: PokemonColor.onSecondary,
  error: PokemonColor.error,
  background: PokemonColor.background,
  secondary: PokemonColor.secondary,
  onError: PokemonColor.onError,
  onBackground: PokemonColor.onBackground,
  surface: PokemonColor.onSurface,
  onSurface: PokemonColor.onSurface,
);
