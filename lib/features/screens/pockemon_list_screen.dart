import 'package:flutter/material.dart';
import 'package:pokemon_api/features/widgets/list_tile_widget.dart';
import 'package:pokemon_api/repositories/models/pockemon_api.dart';
import 'package:pokemon_api/repositories/pokemonApi/pockemon_api_repository.dart';

class PockemonListScreen extends StatefulWidget {
  const PockemonListScreen({Key? key}) : super(key: key);

  @override
  State<PockemonListScreen> createState() => _PockemonListScreenState();
}

class _PockemonListScreenState extends State<PockemonListScreen> {
  late final Future<List<PockemonApi>> _pockemonListFuture;

  @override
  void initState() {
    super.initState();
    _pockemonListFuture = PockemonApiRepository().fetchPockemonList();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
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

            final pockemonList = snapshot.data as List<PockemonApi>;
            return ListView.builder(
              itemCount: pockemonList.length,
              itemBuilder: (context, index) {
                final pockemon = pockemonList[index];
                return ListTileWidget(pockemon: pockemon);
              },
            );
          }),
    );
  }
}
