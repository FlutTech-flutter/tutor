import 'package:flutter/material.dart';

class AppThemeData {
  AppThemeData._();
  static const _primaryColorLight = Colors.blueAccent;
  static const _primaryColorDark = Colors.green;

  static final ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: _primaryColorLight),
      brightness: Brightness.light);
  static final ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: _primaryColorDark));
}
