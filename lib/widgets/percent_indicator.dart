import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PercentIndicator extends StatelessWidget {
  const PercentIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircularPercentIndicator(
              animation: true,
              animationDuration: 1000,
              animateFromLastPercent: false,
              radius: 80,
              lineWidth: 24,
              percent: 0.4,
              progressColor: Colors.deepPurple,
              backgroundColor: Colors.deepPurple.shade100,
              circularStrokeCap: CircularStrokeCap.round,
              center: Text("40%", style: TextStyle(fontSize: 32),),
            ),

            LinearPercentIndicator(
              animation: true,
              animationDuration: 1000,
              animateFromLastPercent: false,
              lineHeight: 24,
              percent: 0.5,
              backgroundColor: Colors.deepPurple.shade100,
              progressColor: Colors.deepPurple,
              barRadius: const Radius.circular(16),
            )
          ],
        ),
      ),
    );
  }
}
