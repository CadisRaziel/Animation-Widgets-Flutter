import 'package:flutter/material.dart';

class FourteenAnimatedSized extends StatefulWidget {
  const FourteenAnimatedSized({Key? key}) : super(key: key);

  @override
  State<FourteenAnimatedSized> createState() => _FourteenAnimatedSizedState();
}

class _FourteenAnimatedSizedState extends State<FourteenAnimatedSized> {
  double _size = 300;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('14 Animated Size'),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            _size = _size == 300 ? 100 : 300;
          });
        },
        child: Container(
          color: Colors.white,
          child: AnimatedSize(
            curve: Curves.easeIn,
            duration: const Duration(seconds: 1),
            child: FlutterLogo(
              size: _size,
            ),
          ),
        ),
      ),
    );
  }
}
