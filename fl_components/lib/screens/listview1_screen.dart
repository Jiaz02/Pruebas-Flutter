import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const ['Pacman', 'Sonic', 'Pokemon', 'Animal Crossing'];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView tipo 1'),
        ),
        //creamos un list view
        body: ListView(
          children: [
            //con esto obtenemos una cosa por item de la lista
            ...options
                .map((game) => ListTile(
                      leading: const Icon(Icons.airline_seat_legroom_reduced),
                      title: Text(game),
                      trailing: const Icon(Icons.arrow_forward_ios_rounded),
                    ))
                .toList()
          ],
        ));
  }
}
