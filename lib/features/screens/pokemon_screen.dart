import 'package:flutter/material.dart';
import 'package:pokemon_api/features/widgets/pokemon_skill.dart';
import 'package:pokemon_api/repositories/models/pokemon_api.dart';
import 'package:pokemon_api/features/widgets/pokemon_view_widget.dart';

class PokemonScreen extends StatefulWidget {
  const PokemonScreen({Key? key}) : super(key: key);

  @override
  State<PokemonScreen> createState() => _PokemonScreenState();
}

class _PokemonScreenState extends State<PokemonScreen> {
  PokemonAPi? pokemon;

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
      appBar: AppBar(title: Text(pokemon?.name ?? '...')),
      body: Container(
        color: Colors.white,
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
                        pokemon: pokemon!,
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
                            skill: pokemon!.name,
                            name: 'Name',
                          ),
                          PokemonSkill(
                            skill: pokemon!.weight,
                            name: 'Weight',
                          ),
                          PokemonSkill(
                            skill: pokemon!.height,
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
                  color: Colors.amberAccent,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3.1,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30.0, 0, 30.0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        PokemonSkill(
                          //skill: pokemon!.stats[0].baseStat,
                          skill: pokemon!.stats.length,
                          name: pokemon!.stats[0].stat.name,
                        ),
                        PokemonSkill(
                          skill: pokemon!.stats[1].baseStat,
                          name: pokemon!.stats[1].stat.name,
                        ),
                        PokemonSkill(
                          skill: pokemon!.stats[2].baseStat,
                          name: pokemon!.stats[2].stat.name,
                        ),
                        PokemonSkill(
                          skill: pokemon!.stats[2].baseStat,
                          name: pokemon!.stats[3].stat.name,
                        ),
                        PokemonSkill(
                          skill: pokemon!.stats[3].baseStat,
                          name: pokemon!.stats[4].stat.name,
                        ),
                        PokemonSkill(
                          skill: pokemon!.stats[4].baseStat,
                          name: pokemon!.stats[5].stat.name,
                        ),
                      ],
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
