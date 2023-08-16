import 'package:flutter/material.dart';
import 'package:git_tutor/presentation/screens/screen_1.dart';
import 'package:git_tutor/presentation/screens/screen_2.dart';
import 'package:git_tutor/presentation/screens/screen_3.dart';
import 'package:git_tutor/presentation/screens/screen_4.dart';
import 'package:provider/provider.dart';

import '../application/theme_service.dart';

class FourScreens extends StatelessWidget {
  const FourScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: InkWell(
        child: FloatingActionButton(
            onPressed: () =>
                Provider.of<CounterService>(context, listen: false).calc()),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: ScreenOne()),
                Expanded(child: ScreenTwo()),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ScreenThree()),
                Expanded(child: ScreenFour()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
