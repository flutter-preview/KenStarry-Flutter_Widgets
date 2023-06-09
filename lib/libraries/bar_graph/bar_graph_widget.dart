import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map_widgets/libraries/bar_graph/bar_data.dart';
import 'package:flutter_map_widgets/libraries/bar_graph/individual_bar.dart';

class BarGraphWidget extends StatelessWidget {
  final List weeklySummary;

  const BarGraphWidget({Key? key, required this.weeklySummary})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  initialize bar data
    BarData my_data = BarData(
        sunAmount: weeklySummary[0],
        monAmount: weeklySummary[1],
        tueAmount: weeklySummary[2],
        wedAmount: weeklySummary[3],
        thuAmount: weeklySummary[4],
        friAmount: weeklySummary[5],
        satAmount: weeklySummary[6]);
    return BarChart(BarChartData(
        maxY: 200,
        minY: 0,
        barGroups: my_data.barData
            .map((data) => BarChartGroupData(
                x: data.x, barRods: [BarChartRodData(toY: data.y)]))
            .toList()));
  }
}
