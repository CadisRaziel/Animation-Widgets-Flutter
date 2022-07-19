import 'package:animations/themes/app_images.dart';
import 'package:flutter/material.dart';

class FourAnimatedCrossFade extends StatefulWidget {
  const FourAnimatedCrossFade({Key? key}) : super(key: key);

  @override
  State<FourAnimatedCrossFade> createState() => _FourAnimatedCrossFadeState();
}

class _FourAnimatedCrossFadeState extends State<FourAnimatedCrossFade> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('04 Animated CrossFade'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
            height: 100,
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _bool = !_bool;
              });
            },
            child: const Text(
              'Switch',
              style: TextStyle(color: Colors.black),
            ),
          ),
          AnimatedCrossFade(
            firstChild: Image.asset(
              AppImages.charmander,
              scale: 5,
            ),
            secondChild: Image.asset(
              AppImages.charizard,
              scale: 5,
            ),
            crossFadeState:
                _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: const Duration(seconds: 1),
          )
        ],
      ),
    );
  }
}
