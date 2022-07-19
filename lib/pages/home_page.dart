import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('15 Animations'),
      ),
      body: Center(
        child: Wrap(
          runAlignment: WrapAlignment.center,
          spacing: 10,
          runSpacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
              child: const Text(
                'Animated Align',
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/animated_align');
              },
            ),
            ElevatedButton(
              child: const Text(
                'Animated Builder',
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/animated_builder');
              },
            ),
            ElevatedButton(
              child: const Text(
                'Animated Container',
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/animated_container');
              },
            ),
            ElevatedButton(
              child: const Text(
                'Animated CrossFade',
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/animated_crossFade');
              },
            ),
            ElevatedButton(
              child: const Text(
                'Animated Default Text Style',
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/animated_default_text_style');
              },
            ),
            ElevatedButton(
              child: const Text(
                'Animated Icon',
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/animated_icon');
              },
            ),
            ElevatedButton(
              child: const Text(
                'Animated List',
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/animated_list');
              },
            ),
            ElevatedButton(
              child: const Text(
                'Animated Modal Barrier',
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/animated_modal_barrier');
              },
            ),
            ElevatedButton(
              child: const Text(
                'Animated Opacity',
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/animated_opacity');
              },
            ),
            ElevatedButton(
              child: const Text(
                'Animated Padding',
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/animated_padding');
              },
            ),
            ElevatedButton(
              child: const Text(
                'Animated Physical Model',
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/animated_physical_model');
              },
            ),
            ElevatedButton(
              child: const Text(
                'Animated Positioned',
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/animated_positioned');
              },
            ),
            ElevatedButton(
              child: const Text(
                'Animated Rotation',
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/animated_rotation');
              },
            ),
            ElevatedButton(
              child: const Text(
                'Animated Size',
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/animated_sized');
              },
            ),
            ElevatedButton(
              child: const Text(
                'Animated Switcher',
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/animated_switcher');
              },
            ),
          ],
        ),
      ),
    );
  }
}
