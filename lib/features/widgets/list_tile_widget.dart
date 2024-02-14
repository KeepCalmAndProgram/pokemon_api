import 'package:flutter/material.dart';
import 'package:pokemon_api/repositories/models/pokemon_api.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
      Key? key,
      required this.pokemon,
  }) : super(key: key);

  final PokemonApi pokemon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      leading: const FlutterLogo(
        size: 25,
      ),
      title: Text(
        pokemon.name,
        style: theme.textTheme.bodyMedium,
      ),
      subtitle: Text(
        '${pokemon.weight} \$',
        style: theme.textTheme.labelSmall,
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: (){
        Navigator.of(context).pushNamed(
          '/pokemon',
          arguments: pokemon,
        );
      },
    );
  }
}
