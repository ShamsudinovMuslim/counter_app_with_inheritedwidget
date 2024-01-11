import 'package:counter_app_with_inheritedwidget/counter_model.dart';
import 'package:counter_app_with_inheritedwidget/main.dart';
import 'package:counter_app_with_inheritedwidget/my_inherited_widget.dart';
import 'package:flutter/material.dart';

class CounterModelState extends State<CounterModel> {
  int san = 0;

  void increment() {
    setState(() {
      san++;
    });
  }

  void decrement() {
    setState(() {
      san--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      san: san,
      increment: increment,
      decrement: decrement,
      child: widget.child,
    );
  }
}
