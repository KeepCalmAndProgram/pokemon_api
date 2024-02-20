import 'package:flutter/material.dart';
import 'package:pokemon_api/features/widgets/pockemon_skill.dart';
import 'package:pokemon_api/repositories/models/pockemon_api.dart';
import 'package:pokemon_api/features/widgets/pockemon_view_widget.dart';

class PockemonScreen extends StatefulWidget {
  const PockemonScreen({Key? key}) : super(key: key);

  @override
  State<PockemonScreen> createState() => _PockemonScreenState();
}

class _PockemonScreenState extends State<PockemonScreen> {
  PockemonAPi? pockemon;

  @override
  void didChangeDependencies() {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    if (arguments is PockemonAPi) {
      pockemon = arguments;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(pockemon?.name ?? '...')),
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
                      child: PockemonView(
                        width: double.infinity,
                        height: double.infinity,
                        pockemon: pockemon!,
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
                            PockemonSkill(
                                skill: pockemon!.name, letter: 'Name'),
                            PockemonSkill(
                                skill: pockemon!.weight, letter: 'Weight'),
                            PockemonSkill(
                                skill: pockemon!.height, letter: 'Height'),
                          ]),
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
                          PockemonSkill(
                              skill: pockemon!.stats[0].baseStat,
                              letter: pockemon!.stats[0].stat.name),
                          PockemonSkill(
                              skill: pockemon!.stats[1].baseStat,
                              letter: pockemon!.stats[1].stat.name),
                          PockemonSkill(
                              skill: pockemon!.stats[2].baseStat,
                              letter: pockemon!.stats[2].stat.name),
                          PockemonSkill(
                              skill: pockemon!.stats[2].baseStat,
                              letter: pockemon!.stats[3].stat.name),
                          PockemonSkill(
                              skill: pockemon!.stats[3].baseStat,
                              letter: pockemon!.stats[4].stat.name),
                          PockemonSkill(
                              skill: pockemon!.stats[4].baseStat,
                              letter: pockemon!.stats[5].stat.name),
                        ]),
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
