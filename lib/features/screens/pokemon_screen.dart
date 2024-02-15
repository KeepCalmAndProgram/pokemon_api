import 'package:flutter/material.dart';
import 'package:pokemon_api/repositories/models/pokemon_api.dart';

class PokemonScreen extends StatefulWidget {
  const PokemonScreen({Key? key}) : super(key: key);

  @override
  State<PokemonScreen> createState() => _PokemonScreenState();
}

class _PokemonScreenState extends State<PokemonScreen> {
  PokemonApi? pokemon;

  @override
  void didChangeDependencies() {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    if (arguments is PokemonApi) {
      pokemon = arguments;
    }

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(pokemon?.name ?? '...')),
    );
  }
}
