import 'package:pokemon_api/features/screens/pokemon_list_screen.dart';
import 'package:pokemon_api/features/screens/pokemon_screen.dart';

final routes = {
  '/': (context) => const PokemonListScreen(),
  '/pokemon': (context) => const PokemonScreen(),
};
