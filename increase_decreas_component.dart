import 'package:flutter/material.dart';
import 'circle_button_component.dart';

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void _increment() {
    setState(() {
      counter++;
    });
  }

  void _decrement() {
    setState(() {
      if (counter > 0) counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleButtonComponent(
              onTap: _decrement,
              child: Icon(
                Icons.remove,
                color: Colors.black,
              ),
            ),
            SizedBox(width: 16),
            Text(
              '$counter',
              style: TextStyle(
                fontSize: 28,
              ),
            ),
            SizedBox(width: 16),
            CircleButtonComponent(
              onTap: _increment,
              child: Icon(
                Icons.add_outlined,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
