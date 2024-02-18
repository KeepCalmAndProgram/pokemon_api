import 'package:flutter/material.dart';
import 'package:pokemon_api/features/widgets/pockemon_view_widget.dart';
import 'package:pokemon_api/repositories/models/pockemon_api.dart';
import 'package:pokemon_api/repositories/pokemonApi/pockemon_api_repository.dart';


class PockemonListScreen extends StatefulWidget {
  const PockemonListScreen({Key? key}) : super(key: key);

  @override
  State<PockemonListScreen> createState() => _PockemonListScreenState();
}

class _PockemonListScreenState extends State<PockemonListScreen> {

  late final Future<List<PockemonAPi>> _pockemonListFuture;

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

          final pokemonList = snapshot.data as List<PockemonAPi>;

          return GridView.builder(
            itemCount: pokemonList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1,
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) {
              final pockemon = pokemonList[index];
              return Container(
                padding: EdgeInsets.all(20.0),
                child: PockemonView(
                    width: double.infinity,
                    height: double.infinity,
                    pockemon: pockemon),
              );
            },
          );
        },
      ),
    );
  }
}
