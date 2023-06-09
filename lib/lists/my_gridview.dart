import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {

  final fruits = ["Apple", "Banana", "Pears"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
            itemBuilder: (context, position) =>
                Card(
                  child: Text(fruits[position]),
                ),
          itemCount: fruits.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2
          ),
        ),
      ),
    );
  }
}