import 'package:flutter/material.dart';

import 'package:fl_components/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      //creamos las rutas, nombre que le queremos poner y luego el nombre de la clase
      routes: {
        'listview1': (BuildContext context) => const ListView1Screen(),
        'listview2': (BuildContext context) => const ListView2Screen(),
        'home': (BuildContext context) => const HomeScreen(),
        'alert': (BuildContext context) => const AlertScreen(),
        'card': (BuildContext context) => const CardScreen(),
      },
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) => const AlertScreen());
      },
    );
  }
}
