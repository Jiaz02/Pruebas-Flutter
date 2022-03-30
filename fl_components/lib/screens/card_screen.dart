import 'package:flutter/material.dart';

import 'package:fl_components/theme/app_theme.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          //si queremos ambos paddings iguales:
          //padding: EdgeInsets.all(8),
          //si los queremos diferentes:
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [
            Card(
              child: Column(
                children: const [
                  ListTile(
                    title: Text('Soy un titulo'),
                    subtitle: Text(
                        'Este es un texto de rellenos cuya funcion no es otra que mostrar que se poner subtitulos xddddd tenga un buen dia'),
                    leading: Icon(
                      Icons.photo,
                      color: AppTheme.primary,
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
