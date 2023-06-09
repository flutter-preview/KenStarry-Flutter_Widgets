import 'package:flutter/material.dart';

class MyAlign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Container(
          height: 120,
          width: double.infinity,
          color: Colors.orangeAccent,
          child: const Align(
            alignment: Alignment.topRight,
            child: Text("Hey"),
          ),
        ),
      ),
    );
  }
}