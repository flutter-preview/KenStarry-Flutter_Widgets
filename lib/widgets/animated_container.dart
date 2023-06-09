import 'package:flutter/material.dart';

class MyAnimatedContainer extends StatefulWidget {
  const MyAnimatedContainer({Key? key}) : super(key: key);

  @override
  State<MyAnimatedContainer> createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {

  double boxHeight = 50;
  double boxWidth = 50;
  var boxColor = Colors.deepPurple;

  void _expandBox() => setState(() {
    boxHeight = 300;
    boxWidth = 300;
  });

  void _changeBoxColor() => setState(() {
    boxColor = Colors.red;
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _expandBox,
      child: Scaffold(
        backgroundColor: Colors.deepPurple.shade200,
        body: Center(
          child: AnimatedContainer(
            curve: Curves.easeIn,
            duration: Duration(milliseconds: 500),
            height: boxHeight,
            width: boxWidth,
            color: boxColor,
          ),
        ),
      ),
    );
  }
}






















