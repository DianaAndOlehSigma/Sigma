
import 'package:flutter/material.dart';
import 'package:sigma/resources/colors.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


final List<ChartData> chartData = [
  ChartData('1', 1, yellow1),
  ChartData('2', 2, red),
  ChartData('3', 3, purple),
  ChartData('4', 4, darkPurple),
  ChartData('4', 5, orange)
];

mainChartBar(){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(
      height: 200,
      width: 200,
      child: SfCircularChart(
              series: <CircularSeries>[
                DoughnutSeries<ChartData, String>(
                    dataSource: chartData,
                    pointColorMapper:(ChartData data,  _) => data.color,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y,
                    innerRadius: '80%',
                    radius: '100%',
                )

              ]
      ),
    ),
  );
}

class ChartData {
  ChartData(this.x, this.y, [this.color]);
  final String x;
  final double y;
  final Color color;
}