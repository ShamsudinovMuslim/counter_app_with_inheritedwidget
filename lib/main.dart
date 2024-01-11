import 'package:counter_app_with_inheritedwidget/counter_button.dart';
import 'package:counter_app_with_inheritedwidget/counter_display.dart';
import 'package:counter_app_with_inheritedwidget/counter_model_state.dart';
import 'package:counter_app_with_inheritedwidget/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'counter_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterModel(child: HomePage()),
    );
  }
}
