import 'package:flutter/material.dart';
import 'package:git_tutor/application/theme_service.dart';
import 'package:git_tutor/themeData.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeService(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(builder: (context, themeService, child) {
      return MaterialApp(
        themeMode: themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
        theme: AppThemeData.lightTheme,
        darkTheme: AppThemeData.darkTheme,
        home: Scaffold(
          appBar: AppBar(
            //elevation: 14,
            title: Text('tre'),
          ),
          floatingActionButton: FloatingActionButton(
              onPressed: () => Provider.of<ThemeService>(context, listen: false)
                  .toggleTheme()),
        ),
      );
    });
  }
}
