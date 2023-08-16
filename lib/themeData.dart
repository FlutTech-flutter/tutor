import 'package:flutter/material.dart';

class AppThemeData {
  AppThemeData._();
  static const _primaryColorLight = Colors.blueAccent;

  static final ThemeData lightTheme = ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: _primaryColorLight),
      brightness: Brightness.light);
  static final ThemeData darkTheme = ThemeData();
}
