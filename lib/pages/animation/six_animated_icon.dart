import 'package:flutter/material.dart';

class SixAnimatedIcon extends StatefulWidget {
  const SixAnimatedIcon({Key? key}) : super(key: key);

  @override
  State<SixAnimatedIcon> createState() => _SixAnimatedIconState();
}

//? Não esqueça de colocar o 'with TickerProviderStateMixin'
class _SixAnimatedIconState extends State<SixAnimatedIcon>
    with TickerProviderStateMixin {
  bool _isPlay = false;
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('06 Animated Icon'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            if (_isPlay == false) {
              _controller.forward();
              _isPlay = true;
            } else {
              _controller.reverse();
              _isPlay = false;
            }
          },
          child: Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              //Temos 14 icons animados no 'AnimatedIcons'
              AnimatedIcon(
                icon: AnimatedIcons.add_event,
                progress: _controller,
                size: 70,
                color: Colors.black,
              ),
              AnimatedIcon(
                icon: AnimatedIcons.arrow_menu,
                progress: _controller,
                size: 70,
                color: Colors.black,
              ),
              AnimatedIcon(
                icon: AnimatedIcons.close_menu,
                progress: _controller,
                size: 70,
                color: Colors.black,
              ),
              AnimatedIcon(
                icon: AnimatedIcons.ellipsis_search,
                progress: _controller,
                size: 70,
                color: Colors.black,
              ),
              AnimatedIcon(
                icon: AnimatedIcons.event_add,
                progress: _controller,
                size: 70,
                color: Colors.black,
              ),
              AnimatedIcon(
                icon: AnimatedIcons.home_menu,
                progress: _controller,
                size: 70,
                color: Colors.black,
              ),
              AnimatedIcon(
                icon: AnimatedIcons.list_view,
                progress: _controller,
                size: 70,
                color: Colors.black,
              ),

              AnimatedIcon(
                icon: AnimatedIcons.menu_arrow,
                progress: _controller,
                size: 70,
                color: Colors.black,
              ),
              AnimatedIcon(
                icon: AnimatedIcons.menu_close,
                progress: _controller,
                size: 70,
                color: Colors.black,
              ),

              AnimatedIcon(
                icon: AnimatedIcons.menu_home,
                progress: _controller,
                size: 70,
                color: Colors.black,
              ),
              AnimatedIcon(
                icon: AnimatedIcons.pause_play,
                progress: _controller,
                size: 70,
                color: Colors.black,
              ),
              AnimatedIcon(
                icon: AnimatedIcons.play_pause,
                progress: _controller,
                size: 70,
                color: Colors.black,
              ),

              AnimatedIcon(
                icon: AnimatedIcons.search_ellipsis,
                progress: _controller,
                size: 70,
                color: Colors.black,
              ),
              AnimatedIcon(
                icon: AnimatedIcons.view_list,
                progress: _controller,
                size: 70,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
