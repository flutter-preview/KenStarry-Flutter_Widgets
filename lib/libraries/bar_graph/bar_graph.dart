import 'package:flutter/material.dart';
import 'package:flutter_map_widgets/libraries/bar_graph/bar_graph_widget.dart';

/*
TASK:

Input : List of weekly expenses = [sunAmount, monAmount, ... satAmount]

Output : Display in a nice bar graph :D
*/

class MyBarGraph extends StatefulWidget {
  const MyBarGraph({Key? key}) : super(key: key);

  @override
  State<MyBarGraph> createState() => _MyBarGraphState();
}

class _MyBarGraphState extends State<MyBarGraph> {
  final List<double> weeklySummary = [4.40, 2.50, 42.42, 10.50, 100.20, 88.99, 90.10];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SizedBox(
              height: 300,
              child: BarGraphWidget(
                weeklySummary: weeklySummary,
              )),
        ),
      ),
    );
  }
}
