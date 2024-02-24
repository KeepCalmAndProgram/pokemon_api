import 'package:flutter/material.dart';

class PokemonExeptionDialog extends StatelessWidget {

  PokemonExeptionDialog({
    Key? key,
    required this.title,
    required this.body,
  }) : super(key: key);

  final String title;
  final Object? body;

  /*Future<dynamic> createAlertDialog(BuildContext context){
    return showDialog(
        context: context,
        builder: (context),
        { return AlertDialog(
        title: Text(title),
        content: Text(body),
        actions: <Widget>[
          TextButton(
            child: Text("OK"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
      );
    });
  }*/


  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
