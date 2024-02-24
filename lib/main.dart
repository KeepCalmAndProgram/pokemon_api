import 'package:flutter/material.dart';
import 'package:pokemon_api/pokemon_list_app.dart';
import 'injector/injector.dart';

void main() {
  injector();
  runApp(const PockemonListApp());
}
