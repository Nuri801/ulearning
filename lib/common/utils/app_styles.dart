import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData appThemeData = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.white,
    ),
  );
}