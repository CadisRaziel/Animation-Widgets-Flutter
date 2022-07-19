import 'package:flutter/material.dart';

class FiveAnimatedDefaultTextStyle extends StatefulWidget {
  const FiveAnimatedDefaultTextStyle({Key? key}) : super(key: key);

  @override
  State<FiveAnimatedDefaultTextStyle> createState() =>
      _FiveAnimatedDefaultTextStyleState();
}

class _FiveAnimatedDefaultTextStyleState
    extends State<FiveAnimatedDefaultTextStyle> {
  bool _first = true;
  double _fontSize = 60;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('05 Animated default text style'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 120,
            child: AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 300),
              style: TextStyle(
                  fontSize: _fontSize,
                  color: _color,
                  fontWeight: FontWeight.bold),
              child: const Text('Flutter'),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _fontSize = _first ? 90 : 60;
                _color = _first ? Colors.blue : Colors.red;
                _first = !_first;
              });
            },
            child: const Text('Switch'),
          )
        ],
      ),
    );
  }
}
