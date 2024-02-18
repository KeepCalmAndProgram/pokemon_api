import 'package:flutter/material.dart';
import 'package:pokemon_api/repositories/models/pockemon_api.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
    Key? key,
    required this.pockemon,
  }) : super(key: key);

  final PockemonAPi pockemon;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      '/pockemon',
                      arguments: pockemon,
                    );
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 8,
                    width: MediaQuery.of(context).size.width / 4.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.lightBlueAccent,
                    ),
                    child: Image.network(
                      'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
