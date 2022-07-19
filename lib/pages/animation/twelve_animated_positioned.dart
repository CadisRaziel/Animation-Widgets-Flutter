import 'package:flutter/material.dart';

class TwelveAnimatedPositioned extends StatefulWidget {
  const TwelveAnimatedPositioned({Key? key}) : super(key: key);

  @override
  State<TwelveAnimatedPositioned> createState() =>
      _TwelveAnimatedPositionedState();
}

class _TwelveAnimatedPositionedState extends State<TwelveAnimatedPositioned> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('12 Animated Positioned'),
      ),
      body: SizedBox(
        width: 200,
        height: 350,
        child: Stack(
          children: [
            AnimatedPositioned(
              width: selected ? 200 : 50,
              height: selected ? 50 : 200,
              top: selected ? 50 : 150,
              duration: const Duration(seconds: 2),
              curve: Curves.fastOutSlowIn,
              child: GestureDetector(
                onTap: (() {
                  setState(() {
                    selected = !selected;
                  });
                }),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
