import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:pokemon_api/common/theme.dart';
import 'package:pokemon_api/features/widgets/pokemon_exeption_dialog.dart';
import 'package:pokemon_api/features/widgets/pokemon_view_widget.dart';
import 'package:pokemon_api/repositories/interface_pokemon_repository.dart';
import 'package:pokemon_api/bloc/pokemon_bloc.dart';

import '../widgets/pokemon_gridview.dart';

class PokemonListScreen extends StatefulWidget {
  const PokemonListScreen({Key? key}) : super(key: key);

  @override
  State<PokemonListScreen> createState() => _PokemonListScreenState();
}

class _PokemonListScreenState extends State<PokemonListScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PokemonBloc(GetIt.instance<PokemonRepository>())
        ..add(
          LoadPokemonList(),
        ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Pokemon Api"),
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            //final completer = Completer();
            //LoadPokemonList(completer);
            LoadPokemonList();
            //return completer.future;
          },
          child: BlocBuilder<PokemonBloc, PokemonState>(
            builder: (context, state) {
              if (state is PokemonLoaded) {
                final pokemonList = state.pokemonList;
                return PokemonGridView(pokemonList: pokemonList);/*GridView.builder(
                  itemCount: pokemonList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    final pokemon = pokemonList[index];
                    return Container(
                      padding: const EdgeInsets.all(20.0),
                      child: PokemonView(
                        width: double.infinity,
                        height: double.infinity,
                        pokemon: pokemon,
                      ),
                    );
                  },
                );*/
              }
              if (state is PokemonLoadingFailure) {
                /*final exeption = state.exeption;
                return CupertinoAlertDialog(
                  title: Text('Exception'),
                  content: Text(
                    exeption.toString(),
                    style: pokemonTheme
                        .textTheme.bodyText1, //TextStyle(color: Colors.black),
                  ),
                  actions: [
                    CupertinoDialogAction(child: Text('OK')),
                    CupertinoDialogAction(child: Text('NO')),
                    /*GestureDetector(
                      child: Text(
                        'Ok',
                        style: pokemonTheme.textTheme.bodyText2,
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),*/
                  ],
                );*/
              }
              return const Center(child: CircularProgressIndicator());
            },
          ),
        ),
      ),
    );
  }
}
