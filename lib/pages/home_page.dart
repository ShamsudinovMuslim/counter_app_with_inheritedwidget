import 'package:counter_app_with_inheritedwidget/counter_button.dart';
import 'package:counter_app_with_inheritedwidget/counter_display.dart';
import 'package:counter_app_with_inheritedwidget/my_inherited_widget.dart';
import 'package:counter_app_with_inheritedwidget/pages/second_page.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final counterProvider = CounterProvider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('InheritedWidget Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CounterDisplay(),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CounterButton(text: '-', onPressed: counterProvider.decrement),
                SizedBox(
                  width: 15,
                ),
                CounterButton(text: '+', onPressed: counterProvider.increment)
              ],
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              SecondPage(result: counterProvider.san)));
                },
                child: Icon(Icons.skip_next))
          ],
        ),
      ),
    );
  }
}
