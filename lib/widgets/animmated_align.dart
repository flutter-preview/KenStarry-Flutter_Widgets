import 'package:flutter/material.dart';

class AnimatedAlign extends StatefulWidget {
  const AnimatedAlign({super.key});

  @override
  State<AnimatedAlign> createState() => _AnimatedAlignState();
}

class _AnimatedAlignState extends State<AnimatedAlign> {

  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: Container(
          width: double.infinity,
          height: 200,
          color: Colors.blueGrey,
          child: AnimatedAlign(),
        ),
      ),
    );
  }
}
