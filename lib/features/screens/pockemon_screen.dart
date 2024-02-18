import 'dart:html';

import 'package:flutter/material.dart';
import 'package:pokemon_api/features/widgets/pockemon_skill.dart';
import 'package:pokemon_api/repositories/models/pockemon_api.dart';

import '../widgets/pockemon_view_widget.dart';

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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      color: Colors.blue,
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.height / 3.1,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            PockemonSkill(
                                skill: pockemon!.name, letter: 'N'),
                            PockemonSkill(
                                skill: pockemon!.weight, letter: 'W'),
                            PockemonSkill(
                                skill: pockemon!.height, letter: 'H'),
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
