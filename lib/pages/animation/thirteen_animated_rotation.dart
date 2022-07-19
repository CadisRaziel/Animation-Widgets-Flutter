import 'package:flutter/material.dart';

class ThirteenAnimatedRotation extends StatefulWidget {
  const ThirteenAnimatedRotation({Key? key}) : super(key: key);

  @override
  State<ThirteenAnimatedRotation> createState() =>
      _ThirteenAnimatedRotationState();
}

class _ThirteenAnimatedRotationState extends State<ThirteenAnimatedRotation> {
  double turns = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('13 Animation Rotation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(50),
              child: AnimatedRotation(
                turns: turns,
                duration: const Duration(seconds: 1),
                child: const FlutterLogo(
                  size: 100,
                ),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.orange),
                onPressed: () {
                  setState(() {
                    turns += 1 / 4;
                  });
                },
                child: const Text('Rotate Logo'))
          ],
        ),
      ),
    );
  }
}
