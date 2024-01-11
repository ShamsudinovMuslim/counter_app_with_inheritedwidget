import 'package:flutter/material.dart';

class CounterButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  CounterButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
