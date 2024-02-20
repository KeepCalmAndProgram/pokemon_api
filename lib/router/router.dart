import 'package:pokemon_api/features/screens/pockemon_list_screen.dart';
import 'package:pokemon_api/features/screens/pockemon_screen.dart';

final routes = {
  '/': (context) => const PockemonListScreen(),
  '/pockemon': (context) => const PockemonScreen(),
};