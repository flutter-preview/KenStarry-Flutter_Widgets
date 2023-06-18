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
        AnimationController(duration: Duration(seconds: 1), vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return;
  }
}
