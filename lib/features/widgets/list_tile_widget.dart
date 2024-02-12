import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
      Key? key,
      required this.pokemonName
  }) : super(key: key);

  final String pokemonName;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      leading: const FlutterLogo(
        size: 25,
      ),
      title: Text(
        pokemonName,
        style: theme.textTheme.bodyMedium,
      ),
      subtitle: Text(
        "123141",
        style: theme.textTheme.labelSmall,
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: (){
        Navigator.of(context).pushNamed(
          '/pokemon',
          arguments: pokemonName,
        );
      },
    );
  }
}
