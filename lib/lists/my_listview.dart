import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  final fruits = [
    "Apple",
    "Banana",
    "Pears",
    "Apple",
    "Banana",
    "Pears",
    "Apple",
    "Banana",
    "Pears",
    "Apple",
    "Banana",
    "Pears",
    "Apple",
    "Banana",
    "Pears",
    "Apple",
    "Banana",
    "Pears",
    "Apple",
    "Banana",
    "Pears",
    "Apple",
    "Banana",
    "Pears"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, position) => Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.all(8),
            height: 200,
            child: Card(
              child: Text(fruits[position]),
            ),
          ),
          itemCount: fruits.length,
          //  NeverScrollableScrollPhysics,
          //  BouncingScrollPhysics
          //  ClampingScrollPhysics
          physics: const ClampingScrollPhysics(),
        ),
      ),
    );
  }
}
