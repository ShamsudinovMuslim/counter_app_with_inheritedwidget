import 'package:flutter/material.dart';

class CounterProvider extends InheritedWidget {
  final int san;
  final Function() increment;
  final Function() decrement;

  CounterProvider({
    required this.decrement,
    required this.san,
    required this.increment,
    required Widget child,
  }) : super(child: child);

  static CounterProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CounterProvider>()!;
  }

  @override
  bool updateShouldNotify(CounterProvider oldWidget) {
    return true;
  }
}
