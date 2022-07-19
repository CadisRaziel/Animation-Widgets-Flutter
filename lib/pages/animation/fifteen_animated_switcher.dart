import 'package:flutter/material.dart';

class FifteenAnimatedSwitcher extends StatefulWidget {
  const FifteenAnimatedSwitcher({Key? key}) : super(key: key);

  @override
  State<FifteenAnimatedSwitcher> createState() =>
      _FifteenAnimatedSwitcherState();
}

class _FifteenAnimatedSwitcherState extends State<FifteenAnimatedSwitcher> {
  int _count = 0;
  int _count2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('15 Animated Switcher'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: Text(
                '$_count',
                style: const TextStyle(fontSize: 40),
                key: ValueKey(_count),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _count += 1;
                });
              },
              child: const Text('Add'),
            ),
            const SizedBox(
              height: 25,
            ),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: Text(
                '$_count2',
                style: const TextStyle(fontSize: 40),
                key: ValueKey(_count2),
              ),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(
                  scale: animation,
                  child: child,
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _count2 += 1;
                });
              },
              child: const Text('Add oher Animation'),
            ),
          ],
        ),
      ),
    );
  }
}
