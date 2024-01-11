// StatefulWidget to handle the counter logic
import 'package:counter_app_with_inheritedwidget/counter_model_state.dart';
import 'package:flutter/material.dart';

class CounterModel extends StatefulWidget {
  final Widget child;

  CounterModel({required this.child});

  @override
  CounterModelState createState() => CounterModelState();
}
