import 'package:flutter/material.dart';
import 'package:pokemon_api/features/widgets/pokemon_skill.dart';
import 'package:pokemon_api/repositories/models/pokemon_api.dart';
import 'package:pokemon_api/features/widgets/pokemon_view_widget.dart';
import 'package:pokemon_api/features/widgets/pokemon_characteristic_widget.dart';

class PokemonScreen extends StatefulWidget {
  const PokemonScreen({Key? key}) : super(key: key);

  @override
  State<PokemonScreen> createState() => _PokemonScreenState();
}

class _PokemonScreenState extends State<PokemonScreen> {
  late PokemonAPi pokemon;

  @override
  void didChangeDependencies() {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    if (arguments is PokemonAPi) {
      pokemon = arguments;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        pokemon.name ?? '...',
        style: Theme.of(context).textTheme.bodyText2,
      )),
      body: Container(
        color: Theme.of(context).colorScheme.onBackground,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.height / 3.1,
                      child: PokemonView(
                        width: double.infinity,
                        height: double.infinity,
                        pokemon: pokemon,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 25, 25, 25),
                    child: Container(
                      color: Colors.white24,
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.height / 3.1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          PokemonSkill(
                            skill: pokemon.name,
                            name: 'Name',
                          ),
                          PokemonSkill(
                            skill: pokemon.weight,
                            name: 'Weight',
                          ),
                          PokemonSkill(
                            skill: pokemon.height,
                            name: 'Height',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 25),
                child: Container(
                  color: Theme.of(context).colorScheme.secondary,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3.1,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30.0, 0, 30.0, 0),
                    child: PokemonCharacteristicWidget(
                      pokemon: pokemon,
                      pokemonStats: pokemon.stats,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
