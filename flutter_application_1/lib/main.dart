import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// creamos un widget  con el nombre que pone en el runApp
// normalmente statelessWidget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        //creamos el home
        //hacemos wrap with centre en el text para meterlo dentro del Center
        home: Center(
      //le ponemos un text simple
      child: Text('Hola Mundo'),
    ));
  }
}
