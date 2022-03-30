import 'package:flutter/material.dart';

import 'package:fl_components/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            title: Text('Soy un titulo'),
            subtitle: Text(
                'Este es un texto de rellenos cuya funcion no es otra que mostrar que se poner subtitulos xddddd tenga un buen dia'),
            leading: Icon(
              Icons.photo,
              color: AppTheme.primary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                  style: TextButton.styleFrom(primary: AppTheme.primary),
                ),
                TextButton(onPressed: () {}, child: const Text('Ok')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
