import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class MyPieChart extends StatelessWidget {
  final List<PieChartSectionData> pieData;
  const MyPieChart({Key? key,required this.pieData,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: PieChart(
        PieChartData(
          sections: pieData, //PieChartSectionData
          /*PieChartSectionData()
           PieChartSectionData PieChartSectionData({
              double? value,
              Color? color,
              double? radius,
              bool? showTitle,
              TextStyle? titleStyle,
              String? title,
              BorderSide? borderSide,
              Widget? badgeWidget,
              double? titlePositionPercentageOffset,
              double? badgePositionPercentageOffset,
           */
        ),
      ),
    );
  }
}



