import 'package:flutter/material.dart';

class MyAspectRatio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.orangeAccent,
      alignment: Alignment.center,
      width: double.infinity,
      height: 250,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(
          color: Colors.blueGrey,
        ),
      ),
    );
  }
}