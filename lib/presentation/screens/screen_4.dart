import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../application/theme_service.dart';

class ScreenFour extends StatelessWidget {
  const ScreenFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Provider.of<CounterService>(context).value.toString()),
      ),
    );
  }
}
