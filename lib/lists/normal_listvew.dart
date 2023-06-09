import 'package:flutter/material.dart';

class MyNormalList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return ListView(
      children: [
        Text("Heeey" * 10000)
      ],
    );
  }
}