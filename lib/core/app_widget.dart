import 'package:animations/pages/animation/eight_animated_modal_barrier.dart';
import 'package:animations/pages/animation/eleven_animated_physical_model.dart';
import 'package:animations/pages/animation/fifteen_animated_switcher.dart';
import 'package:animations/pages/animation/first_animated_align.dart';
import 'package:animations/pages/animation/five_animated_default_text_style.dart';
import 'package:animations/pages/animation/four_animated_cross_fade.dart';
import 'package:animations/pages/animation/fourteen_animated_sized.dart';
import 'package:animations/pages/animation/nine_animated_opacity.dart';
import 'package:animations/pages/animation/second_animated_builder.dart';
import 'package:animations/pages/animation/seven_animated_list.dart';
import 'package:animations/pages/animation/six_animated_icon.dart';
import 'package:animations/pages/animation/ten_animated_padding.dart';
import 'package:animations/pages/animation/thirteen_animated_rotation.dart';
import 'package:animations/pages/animation/three_animated_container.dart';
import 'package:animations/pages/animation/twelve_animated_positioned.dart';
import 'package:animations/pages/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '15 Animations',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (_) => const HomePage(),
        '/animated_align': (_) => const FirstAnimatedAlign(),
        '/animated_builder': (_) => const SecondAnimatedBuilder(),
        '/animated_container': (_) => const ThreeAnimatedContainer(),
        '/animated_crossFade': (_) => const FourAnimatedCrossFade(),
        '/animated_default_text_style': (_) =>
            const FiveAnimatedDefaultTextStyle(),
        '/animated_icon': (_) => const SixAnimatedIcon(),
        '/animated_list': (_) => const SevenAnimatedList(),
        '/animated_modal_barrier': (_) => const EightAnimatedModalBarrier(),
        '/animated_opacity': (_) => const NineAnimatedOpacity(),
        '/animated_padding': (_) => const TenAnimatedPadding(),
        '/animated_physical_model': (_) => const ElevenAnimatedPhysicalModel(),
        '/animated_positioned': (_) => const TwelveAnimatedPositioned(),
        '/animated_rotation': (_) => const ThirteenAnimatedRotation(),
        '/animated_sized': (_) => const FourteenAnimatedSized(),
        '/animated_switcher': (_) => const FifteenAnimatedSwitcher(),
      },
    );
  }
}
