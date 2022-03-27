import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //hacemos una variable guardar el stilo
    const TextStyle fontSize30 = TextStyle(fontSize: 30);
    const TextStyle fontSize20 = TextStyle(fontSize: 20);

    int num = 0;

    //creamos un scaffold
    return Scaffold(
      //creamos un appbar de un tamaño x
      appBar: AppBar(
        //color del appbar
        backgroundColor: Colors.green,
        //texto del appbar
        title: const Center(child: Text('Holis')),
        //sombrita de abajo
        elevation: 10.0,
      ),
      //ponemos color de fondo
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: Column(
          //centramos la columna con mainAxisAligment en eje y
          mainAxisAlignment: MainAxisAlignment.center,
          //centramos la columna con CrossAxisAlignment en eje x respecto al item mas grande
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //cambiamos las propiedades del texto
            const Text('Contador de clicks', style: fontSize30),
            Text('$num', style: fontSize20)
          ],
        ),
      ),
      //asignamos la ubicacion del floating action button
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      //creamos el floating action button
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        elevation: 10.0,
        child: const Icon(Icons.add),
        onPressed: () {
          num++;
          print(num);
        },
      ),
    );
  }
}
