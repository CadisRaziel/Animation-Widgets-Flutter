import 'package:flutter/material.dart';

class NineAnimatedOpacity extends StatefulWidget {
  const NineAnimatedOpacity({Key? key}) : super(key: key);

  @override
  State<NineAnimatedOpacity> createState() => _NineAnimatedOpacityState();
}

class _NineAnimatedOpacityState extends State<NineAnimatedOpacity> {
  double opacityLevel = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('09 Animated Opacity'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: opacityLevel,
              duration: const Duration(seconds: 2),
              child: const FlutterLogo(
                size: 50,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    opacityLevel = opacityLevel == 0 ? 1.0 : 0.0;
                  });
                },
                child: const Text('Fade Logo'))
          ],
        ),
      ),
    );
  }
}
