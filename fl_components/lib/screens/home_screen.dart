import 'package:flutter/material.dart';

import 'package:fl_components/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var green = Colors.green[400];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: green,
          elevation: 0,
          title: const Text('Componentes en flutter'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  //sacamos los datos del menu option que esta en approutes
                  title: Text(AppRoutes.menuOption[index].name),
                  leading: Icon(
                    AppRoutes.menuOption[index].icon,
                    color: green,
                  ),
                  onTap: () {
                    //definimos una ruta
                    // final route = MaterialPageRoute(
                    //     builder: (context) => const ListView1Screen());

                    //llamamos a otra pantalla
                    // Navigator.push(context, route);

                    Navigator.pushNamed(
                        context, AppRoutes.menuOption[index].route);
                  },
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: AppRoutes.menuOption.length));
  }
}
