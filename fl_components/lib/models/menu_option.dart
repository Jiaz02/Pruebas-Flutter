//mostramos solo el icon data usando el show
import 'package:flutter/material.dart' show IconData, Widget;

class MenuOption {
  final String route;
  final IconData icon;
  final String name;
  final Widget scrren;

  MenuOption(
      {required this.route,
      required this.icon,
      required this.name,
      required this.scrren});
}
