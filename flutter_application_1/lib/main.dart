import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';

import 'screens/counter_screen.dart';

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
        //eliminamos el debug de arriba
        debugShowCheckedModeBanner: false,
        //creamos el home
        //home: HomeScreen());
        home: CounterScreen());
  }
}
