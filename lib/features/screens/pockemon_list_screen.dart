import 'package:flutter/material.dart';
import 'package:pokemon_api/repositories/models/pockemon_api.dart';
import 'package:pokemon_api/repositories/pokemonApi/pockemon_api_repository.dart';

import '../widgets/pockemon_view_widget.dart';

class PockemonListScreen extends StatefulWidget {
  const PockemonListScreen({Key? key}) : super(key: key);

  @override
  State<PockemonListScreen> createState() => _PockemonListScreenState();
}

class _PockemonListScreenState extends State<PockemonListScreen> {
  late final Future<List<PockemonAPi>> _pockemonListFuture;

  late double _width;
  late double _height;

    @override
  void initState() {
    super.initState();
    _pockemonListFuture = PockemonApiRepository().fetchPockemonList();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    _width = MediaQuery.of(context).size.width / 4.3;
    _height = MediaQuery.of(context).size.height / 8;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pokemon Api"),
      ),
      body: FutureBuilder(
          future: _pockemonListFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            if (snapshot.hasError) {
              return Center(
                child: Text(
                  'Error: ${snapshot.error}',
                  style: theme.textTheme.bodyMedium,
                ),
              );
            }

            final pockemonList = snapshot.data as List<PockemonAPi>;

            return SizedBox(
              height: MediaQuery.of(context).size.height / 1.5,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: pockemonList.length,
                itemBuilder: (context, index) {
                  final pockemon = pockemonList[index];
                  return Wrap(
                      spacing: 5.0,
                      runSpacing: 5.0,
                      children: [
                          PockemonView(width: _width, height: _height, pockemon: pockemon),
                      ],
                  );
                },
            ),
            );
            /*ListView.builder(
              itemCount: pockemonList.length,
              itemBuilder: (context, index) {
                final pockemon = pockemonList[index];
                return PockemonView(width: 20, height: 20, pockemon: pockemon);
                //return ListTileWidget(pockemon: pockemon);
              },
            );*/
          }),
    );
  }
}
