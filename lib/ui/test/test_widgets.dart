import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class TestWidget extends StatefulWidget {
  final Color color;

  const TestWidget({Key? key, required this.color}) : super(key: key);

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  List<_SalesData> data = [
    _SalesData('Jan', 35),
    _SalesData('Feb', 28),
    _SalesData('Mar', 34),
    _SalesData('Apr', 32),
    _SalesData('May', 40),
    _SalesData('Jun', 45),
    _SalesData('Jul', 25),
    _SalesData('Aug', 35),
    _SalesData('Sep', 30),
    _SalesData('Oct', 32),
    _SalesData('Ocst', 45),
    _SalesData('Octd', 29),
    _SalesData('Octg', 33),
    _SalesData('Ocxt', 40),
  ];

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return AspectRatio(
      aspectRatio: 3.2,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: size.width*1.2,
            child: SfCartesianChart(
              plotAreaBackgroundColor: widget.color,
              plotAreaBorderColor: widget.color,
              borderWidth: 0,
              isTransposed: false,
              primaryYAxis: NumericAxis(
                  borderWidth: 0,
                  maximumLabelWidth: 5,
                  maximum: 48,
                  minimum: 20,
                  minorGridLines: MinorGridLines(color: widget.color),
                  borderColor: widget.color,
                  majorGridLines: MajorGridLines(color: Colors.transparent),
                  isVisible: true,
                  labelStyle: TextStyle(color: Colors.transparent),
                  axisLine: AxisLine(color: Colors.transparent)),
              primaryXAxis: CategoryAxis(
                labelStyle: const TextStyle(color: Colors.white),
                borderWidth: 0,
                borderColor: Colors.transparent,
                axisBorderType: AxisBorderType.rectangle,
                minorGridLines: MinorGridLines(color: widget.color),
                axisLine: AxisLine(color: widget.color),
                majorGridLines: MajorGridLines(color: widget.color),
                isVisible: true,
              ),
              plotAreaBorderWidth: 0,
              tooltipBehavior: TooltipBehavior(
                duration: 5000,
                header: "",
                tooltipPosition: TooltipPosition.auto,
                enable: true,
                color: Colors.white,
                textStyle: TextStyle(color: Colors.black),
              ),
              backgroundColor: widget.color,
              enableAxisAnimation: true,
              borderColor: widget.color,
              series: <SplineSeries<_SalesData, String>>[
                SplineSeries<_SalesData, String>(
                  color: Colors.white,
                  cardinalSplineTension: 0.5,
                  markerSettings: const MarkerSettings(isVisible: false),
                  dataSource: data,
                  xValueMapper: (_SalesData sales, _) => sales.year,
                  yValueMapper: (_SalesData sales, _) => sales.sales,
                  dataLabelSettings: const DataLabelSettings(isVisible: false),
                  splineType: SplineType.natural,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
