import 'package:flutter/material.dart';

final grayTheme = ThemeData(
  scaffoldBackgroundColor: const Color.fromARGB(124, 31, 31, 26),
  primarySwatch: Colors.blue,
  dividerColor: Colors.white24,
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(color: Colors.white),
    backgroundColor: Color.fromARGB(255, 31, 31, 31),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 24,
      fontWeight: FontWeight.w600,
    ),
  ),
  listTileTheme: const ListTileThemeData(iconColor: Colors.white24),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      color: Colors.white,
      fontSize: 24,
      fontWeight: FontWeight.w400,
    ),
    labelSmall: TextStyle(
      color: Colors.white70,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
  ),
);
