import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      //le ponemos un text simple
      //hacemos wrap with centre en el text para meterlo dentro del Center
      child: Text('HomeScreen'),
    );
  }
}
