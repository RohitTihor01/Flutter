import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomLineChart extends StatefulWidget {
  final double xMin;
  final double xMax;
  final double yMin;
  final double yMax;
  //final double xValue;
  //final double yValue;
  final List<FlSpot> spots;
  final FlTitlesData titlesData ;

  const CustomLineChart({
    Key? key,
    required this.xMin,
    required this.xMax,
    required this.yMin,
    required this.yMax,
    //required this.xValue,
    //required this.yValue,
    required this.spots,
    required this.titlesData,
  }) : super(key: key);

  @override
  State<CustomLineChart> createState() => _CustomLineChartState();
}

class _CustomLineChartState extends State<CustomLineChart> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: LineChart(

        LineChartData(
          gridData: const FlGridData(show: false),
          borderData: FlBorderData(show: false),
          titlesData:widget.titlesData,
          // x axis
          minX: widget.xMin,
          maxX: widget.xMax,
          // y axis
          minY: widget.yMin,
          maxY: widget.yMax,
          //titlesData: LineTitle.getTitleData(),
          lineBarsData: [
            LineChartBarData(
              spots:widget.spots,
              isCurved: true,
              color: Colors.orange[400],
              barWidth: 5,   //thickness of line
              dotData:  const FlDotData(show: false), // to highlight dots on graph
              belowBarData: BarAreaData(show: true,color: Colors.yellow[200]?.withOpacity(0.3)),


            ),
          ],
        ),
      ),
    );
  }
}


  



/* body: AspectRatio(
        aspectRatio: 1,
        child: LineChart(
          LineChartData(
            lineBarsData: [
              LineChartBarData(
                spots: widget.dataPoints,
                isCurved: true,
                dotData: FlDotData(show: true),
                color: Colors.blue,
                barWidth: 5,
              ),
            ],
            minX: widget.dataPoints.first.x,
            maxX: widget.dataPoints.last.x,
            minY: widget.dataPoints.map((point) => point.y).reduce((min, current) => min > current ? current : min),
            maxY: widget.dataPoints.map((point) => point.y).reduce((max, current) => max < current ? current : max),
            backgroundColor: Colors.black,
            titlesData: const FlTitlesData(
              show: true,
              bottomTitles: AxisTitles(
                axisNameWidget: Text("X axis"),

              ),
            ),
            gridData: FlGridData(
              show: true,
              drawHorizontalLine: true,
              getDrawingHorizontalLine: (value) => FlLine(
                color: Colors.yellow[200],
                strokeWidth: 0.5,
              ),
            ),
          ),
        ),
      ),*/


