import 'package:counter_app_with_inheritedwidget/my_inherited_widget.dart';
import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterProvider = CounterProvider.of(context);

    return Text('San: ${counterProvider.san}');
  }
}
