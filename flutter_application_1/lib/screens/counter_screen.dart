import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
//creamos el contador como una propiedad
  int num = 0;

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
        title: const Center(child: Text('Contador')),
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
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.purple,
            elevation: 10.0,
            child: const Icon(Icons.add),
            //cuando lo pretamos
            onPressed: () {
              num++;
              print(num);
              //actualizamos la ventana
              setState(() {});
            },
          ),
          //hacemos una separacion
          const SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            backgroundColor: Colors.purple,
            elevation: 10.0,
            child: const Icon(Icons.restart_alt_outlined),
            //cuando lo pretamos
            onPressed: () {
              num = 0;
              print(num);
              //actualizamos la ventana
              setState(() {});
            },
          ),
          //hacemos una separacion
          const SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            backgroundColor: Colors.purple,
            elevation: 10.0,
            child: const Icon(Icons.remove),
            //cuando lo pretamos
            onPressed: () {
              num--;
              print(num);
              //actualizamos la ventana
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
