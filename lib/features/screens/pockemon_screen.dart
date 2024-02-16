import 'package:flutter/material.dart';
import 'package:pokemon_api/repositories/models/pockemon_api.dart';

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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.height / 1.6,
                  color: Colors.deepPurple,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.height / 1.6,
                  color: Colors.blue,
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width / 2,
                color: Colors.amberAccent,
            ),
          ],
        )
      ),
    );
  }
}
