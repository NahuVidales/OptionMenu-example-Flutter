import 'package:flutter_application_1/screens/screens.dart';

class MenuOption {
  MenuOption({
    required this.route,
    // ignore: non_constant_identifier_names
    required this.iconData,
    required this.name,
    required this.screen,
  });
  final String route;
  // ignore: non_constant_identifier_names
  final IconData iconData;
  final String name;
  final Widget screen;
}
