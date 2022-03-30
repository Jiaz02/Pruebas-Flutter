import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.green;
  static const Color primaryDark = Color.fromARGB(255, 1, 59, 3);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //color primario
      primaryColor: primary,
      //appbar theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      //textbutton
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: primary),
      ));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      //color primario
      primaryColor: primaryDark,
      //appbar theme
      appBarTheme: const AppBarTheme(color: primaryDark, elevation: 0));
}
