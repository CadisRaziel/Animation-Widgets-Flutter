import 'package:flutter/material.dart';

class FirstAnimatedAlign extends StatefulWidget {
  const FirstAnimatedAlign({Key? key}) : super(key: key);

  @override
  State<FirstAnimatedAlign> createState() => _FirstAnimatedAlignState();
}

class _FirstAnimatedAlignState extends State<FirstAnimatedAlign> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('01 Animated Align'),
      ),
      body: GestureDetector(
        onTap: (() {
          setState(
            () {
              selected = !selected;
            },
          );
        }),
        child: Center(
          child: Container(
            width: double.infinity,
            height: 250,
            color: Colors.blueGrey,
            child: AnimatedAlign(
              alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              child: const FlutterLogo(
                size: 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
