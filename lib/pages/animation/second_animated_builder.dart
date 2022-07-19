import 'package:flutter/material.dart';
import 'dart:math' as math;

class SecondAnimatedBuilder extends StatefulWidget {
  const SecondAnimatedBuilder({Key? key}) : super(key: key);

  @override
  State<SecondAnimatedBuilder> createState() => _SecondAnimatedBuilderState();
}

//? Não esqueça o with TickerProviderStateMixin
class _SecondAnimatedBuilderState extends State<SecondAnimatedBuilder>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 10),
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('02 Animated Builder'),
      ),
      body: Center(
          child: AnimatedBuilder(
        animation: _controller,
        builder: (context, widget) {
          return Transform.rotate(
            angle: _controller.value * 2.0 * math.pi,
            child: const FlutterLogo(
              size: 100,
            ),
          );
        },
      )),
    );
  }
}
