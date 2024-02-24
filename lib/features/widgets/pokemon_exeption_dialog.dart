import 'package:flutter/material.dart';

class PokemonExeptionDialog extends StatelessWidget {
  const PokemonExeptionDialog(
      {super.key, required this.title, required this.body});

  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyText2,
      ),
      content: Text(
        body,
        style: Theme.of(context).textTheme.bodyText2,
      ),
      actions: [
        TextButton(
          child: Text(
            "OK",
            style: Theme.of(context).textTheme.bodyText2,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
