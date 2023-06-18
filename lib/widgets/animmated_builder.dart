import 'package:flutter/material.dart';

class AnimatedBuilder extends StatefulWidget {
  const AnimatedBuilder({super.key});

  @override
  State<AnimatedBuilder> createState() => _AnimatedBuilderState();
}

class _AnimatedBuilderState extends State<AnimatedBuilder>
    with TickerProviderStateMixin {
  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(duration: Duration(seconds: 1), vsync: this)
          ..repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animationController,
        child: FlutterLogo(
          size: 100,
        ),
        builder: (context, child) {
          return Transform.rotate(
            angle: _animationController.value * 2.0 * math.pi,
            child: child,
          );
        });
  }
}
