import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //hacemos una variable guardar el stilo
    const TextStyle fontSize30 = TextStyle(fontSize: 30);
    const TextStyle fontSize20 = TextStyle(fontSize: 20);
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
          children: const <Widget>[
            //cambiamos las propiedades del texto
            Text('Contador de clicks', style: fontSize30),
            Text('10', style: fontSize20)
          ],
        ),
      ),
    );
  }
}
