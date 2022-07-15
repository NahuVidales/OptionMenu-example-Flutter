import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;
  static final ThemeData DarkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.indigo,
    appBarTheme: AppBarTheme(
      color: Colors.green,
      elevation: 0,
    ),
    textButtonTheme:
        TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),
    floatingActionButtonTheme:
        FloatingActionButtonThemeData(backgroundColor: primary),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary,
        shape: StadiumBorder(),
        elevation: 0,
      ),
    ),
  );
}
