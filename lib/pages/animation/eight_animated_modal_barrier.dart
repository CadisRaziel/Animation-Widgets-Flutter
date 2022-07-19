import 'package:flutter/material.dart';

class EightAnimatedModalBarrier extends StatefulWidget {
  const EightAnimatedModalBarrier({Key? key}) : super(key: key);

  @override
  State<EightAnimatedModalBarrier> createState() =>
      _EightAnimatedModalBarrierState();
}

//? Não esqueã o 'with TickerProviderStateMixin'
class _EightAnimatedModalBarrierState extends State<EightAnimatedModalBarrier>
    with TickerProviderStateMixin {
  bool _isPressed = false;
  late Widget _animatedModalBarrier;
  late AnimationController _animationController;
  late Animation<Color?> _animationColor;

  @override
  void initState() {
    ColorTween _colorTween = ColorTween()
      ..begin = Colors.orangeAccent.withOpacity(0.5)
      ..end = Colors.blueGrey.withOpacity(0.5);
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    _animationColor = _colorTween.animate(_animationController);
    _animatedModalBarrier = AnimatedModalBarrier(
      color: _animationColor,
      dismissible: true,
    );

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('08 Animated Modal Barrier'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                  width: 250,
                  child: Stack(
                    children: [
                      Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orangeAccent,
                          ),
                          child: const Text('Press'),
                          onPressed: () {
                            setState(() {
                              _isPressed = true;
                            });
                            _animationController.reset();
                            _animationController.forward();
                            Future.delayed(
                              const Duration(seconds: 3),
                              () {
                                setState(
                                  () {
                                    _isPressed = false;
                                  },
                                );
                              },
                            );
                          },
                        ),
                      ),
                      if (_isPressed) _animatedModalBarrier
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
