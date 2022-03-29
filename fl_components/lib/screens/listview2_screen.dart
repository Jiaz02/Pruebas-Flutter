import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const ['Pacman', 'Sonic', 'Pokemon', 'Animal Crossing'];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView tipo 2'),
        ),
        //creamos un list view
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
            leading: const Icon(Icons.airline_seat_legroom_reduced,
                color: AppTheme.primary),
            title: Text(options[index]),
            trailing: const Icon(Icons.arrow_forward_ios_rounded,
                color: AppTheme.primary),
            //hacemos que algo pase si se toca
            onTap: () {},
          ),
          separatorBuilder: (context, index) => const Divider(),
        ));
  }
}
