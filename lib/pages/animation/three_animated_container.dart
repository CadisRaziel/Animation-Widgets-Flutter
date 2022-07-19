import 'package:animations/pages/animation/second_animated_builder.dart';
import 'package:flutter/material.dart';

class ThreeAnimatedContainer extends StatefulWidget {
  const ThreeAnimatedContainer({Key? key}) : super(key: key);

  @override
  State<ThreeAnimatedContainer> createState() => _ThreeAnimatedContainerState();
}

class _ThreeAnimatedContainerState extends State<ThreeAnimatedContainer> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('03 Animated Container'),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: AnimatedContainer(
            width: selected ? 200 : 100,
            height: selected ? 100 : 200,
            color: selected ? Colors.red : Colors.green,
            alignment:
                selected ? Alignment.center : AlignmentDirectional.topCenter,
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: const FlutterLogo(
              size: 75,
            ),
          ),
        ),
      ),
    );
  }
}
