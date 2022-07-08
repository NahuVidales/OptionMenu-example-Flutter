import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.green;
  static final ThemeData DarkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.orange,
    appBarTheme: AppBarTheme(
      color: Colors.green,
      elevation: 0,
    ),
  );
}
