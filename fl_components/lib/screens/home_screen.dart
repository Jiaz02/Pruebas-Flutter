import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text('Componentes en flutter'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: const Text('Nombre de ruta'),
                  leading: const Icon(Icons.chair),
                  onTap: () {
                    //definimos una ruta
                    // final route = MaterialPageRoute(
                    //     builder: (context) => const ListView1Screen());

                    //llamamos a otra pantalla
                    // Navigator.push(context, route);

                    Navigator.pushNamed(context, 'alert');
                  },
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: 10));
  }
}
