import 'package:flutter/material.dart';
import 'package:pokemon_api/repositories/models/pockemon_api.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
      Key? key,
      required this.pockemon,
  }) : super(key: key);

  final PockemonApi pockemon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      leading: const FlutterLogo(
        size: 25,
      ),
      title: Text(
        pockemon.name,
        style: theme.textTheme.bodyMedium,
      ),
      //subtitle: Text(
       // '${pockemon.weight} \$',
       // style: theme.textTheme.labelSmall,
     // ),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: (){
        Navigator.of(context).pushNamed(
          '/pockemon',
          arguments: pockemon,
        );
      },
    );
  }
}
