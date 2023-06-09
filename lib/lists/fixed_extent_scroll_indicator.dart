import 'package:flutter/material.dart';

class MyFixedExtentScrollController extends StatelessWidget {
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

    FixedExtentScrollController controller = FixedExtentScrollController();

    return Scaffold(
      body: SafeArea(
        child: ListWheelScrollView(
          controller: controller,
          physics: const FixedExtentScrollPhysics(),
          itemExtent: 60.0,
          children:  fruits.map((fruit) => Container(
            padding: const EdgeInsets.all(16),
            height: 200,
            child: Card(
              child: Text(fruit),
            ),
          )).toList(),
        )
      ),
    );
  }
}
