import 'package:flutter/material.dart';

class TenAnimatedPadding extends StatefulWidget {
  const TenAnimatedPadding({Key? key}) : super(key: key);

  @override
  State<TenAnimatedPadding> createState() => _TenAnimatedPaddingState();
}

class _TenAnimatedPaddingState extends State<TenAnimatedPadding> {
  double padValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('10 Animated Padding'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.orange,
            ),
            child: const Text('Change padding'),
            onPressed: () {
              setState(() {
                padValue = padValue == 0.0 ? 100.0 : 0.0;
              });
            },
          ),
          Text('Padding = $padValue'),
          AnimatedPadding(
            padding: EdgeInsets.all(padValue),
            duration: const Duration(seconds: 2),
            curve: Curves.easeInOut,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              color: Colors.orange,
            ),
          )
        ],
      ),
    );
  }
}
