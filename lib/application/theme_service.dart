import 'package:flutter/material.dart';
import 'package:git_tutor/data.dart';

class CounterService extends ChangeNotifier {
  bool isDarkModeOn = false;
  int value = 1;

  void toggleTheme() {
    isDarkModeOn = !isDarkModeOn;
    notifyListeners();
  }

  void calc() {
    value++;
    debugPrint('button press received');
    print(value);
    notifyListeners();
  }
}
