import 'package:flutter/material.dart';

class ElevenAnimatedPhysicalModel extends StatefulWidget {
  const ElevenAnimatedPhysicalModel({Key? key}) : super(key: key);

  @override
  State<ElevenAnimatedPhysicalModel> createState() =>
      _ElevenAnimatedPhysicalModelState();
}

class _ElevenAnimatedPhysicalModelState
    extends State<ElevenAnimatedPhysicalModel> {
  bool _isFlat = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('11 Animated Physical Model'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedPhysicalModel(
              shape: BoxShape.rectangle,
              elevation: _isFlat ? 0 : 6.0,
              color: Colors.white,
              shadowColor: Colors.red,
              curve: Curves.fastOutSlowIn,
              duration: const Duration(milliseconds: 500),
              child: const SizedBox(
                height: 120,
                width: 120,
                child: Icon(Icons.android_outlined),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isFlat = !_isFlat;
                });
              },
              child: const Text('Click'),
            ),
          ],
        ),
      ),
    );
  }
}
