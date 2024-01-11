import 'package:counter_app_with_inheritedwidget/my_inherited_widget.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final int result;
  const SecondPage({
    super.key,
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('San:${result}')],
        ),
      ),
    );
  }
}
