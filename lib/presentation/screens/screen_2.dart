import 'package:flutter/material.dart';
import 'package:git_tutor/application/theme_service.dart';
import 'package:provider/provider.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Provider.of<CounterService>(context).value.toString()),
      ),
    );
  }
}
