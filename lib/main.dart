import 'package:flutter/material.dart';
import 'package:git_tutor/application/theme_service.dart';
import 'package:git_tutor/presentation/four_screens.dart';
import 'package:git_tutor/themeData.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => CounterService(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterService>(builder: (context, themeService, child) {
      return MaterialApp(
          themeMode: ThemeMode.light,
          theme: AppThemeData.lightTheme,
          darkTheme: AppThemeData.darkTheme,
          home: FourScreens()
          /*Scaffold(
          appBar: AppBar(
            //elevation: 14,
            title: Text('tre'),
          ),
          floatingActionButton: FloatingActionButton(
              onPressed: () =>
                  Provider.of<CounterService>(context, listen: false)
                      .toggleTheme()),
        ),*/
          );
    });
  }
}
