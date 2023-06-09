import 'package:flutter/material.dart';

class MyListViewSeparated extends StatelessWidget {

  final fruits = ["Apple", "Banana", "Pears"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.separated(
            itemBuilder: (context, pos) => Card(
              child: Text(fruits[pos]),
            ),
            separatorBuilder: (context, pos) => const Card(
              color: Colors.orangeAccent,
              child: Text("Some random seperator"),
            ),
            itemCount: fruits.length
        )
      ),
    );
  }
}