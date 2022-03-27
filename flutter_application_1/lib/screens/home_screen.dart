import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //creamos un scaffold
    return const Scaffold(
      //ponemos color dde fondo
      backgroundColor: Colors.green,
      body: Center(
        //le ponemos un text simple
        //hacemos wrap with centre en el text para meterlo dentro del Center
        child: Text('HomeScreen'),
      ),
    );
  }
}
