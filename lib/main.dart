import 'package:flutter/material.dart';
import 'package:git_tutor/themeData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: AppThemeData.lightTheme,
      darkTheme: AppThemeData.darkTheme,
      home: Scaffold(
        appBar: AppBar(
          //elevation: 14,
          title: Text('tre'),
        ),
        floatingActionButton: FloatingActionButton(onPressed: null),
      ),
    );
  }
}
