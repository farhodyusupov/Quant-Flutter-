import 'package:dotted_border/dotted_border.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quant_flutter_new/data/model/lists.dart';

class _LineChart extends StatelessWidget {
  const _LineChart({required this.isShowingMainData});

  final bool isShowingMainData;

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: LineChart(
          sampleData1,
          swapAnimationDuration: Duration(seconds: 2),
        ),
      ),
    );
  }

  LineChartData get sampleData1 => LineChartData(
        lineTouchData: lineTouchData1,
        gridData: gridData,
        titlesData: titlesData1,
        borderData: borderData,
        lineBarsData: lineBarsData1,
        minX: 0,
        minY: 0,

      );

  LineTouchData get lineTouchData1 => LineTouchData(
      touchCallback: (FlTouchEvent event, LineTouchResponse ?touchResponse) {
        if (event is FlTapUpEvent) {

        }
      },
      getTouchedSpotIndicator:
          (LineChartBarData barData, List<int> indicators) {
        return indicators.map(
              (int index) {
            final line = FlLine(
                color: Colors.grey,
                strokeWidth: 0,
);
            return TouchedSpotIndicatorData(
              line,
              FlDotData(show: true),
            );
          },
        ).toList();
      },
      touchTooltipData: LineTouchTooltipData(
        tooltipBgColor: Colors.transparent,
        tooltipRoundedRadius: 20.0,
        showOnTopOfTheChartBoxArea: true,
        fitInsideHorizontally: true,
        tooltipMargin: 0,
      ),

      );

  FlTitlesData get titlesData1 => FlTitlesData(
        bottomTitles: bottomTitles,
        show: true,
        rightTitles: SideTitles(showTitles: false),
        topTitles: SideTitles(showTitles: false),
        leftTitles: SideTitles(showTitles: false),
      );

  List<LineChartBarData> get lineBarsData1 => [
        lineChartBarData1_1,
      ];

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 45,
        margin: 15,
        getTextStyles: (context, value) => TextStyle(
          color: const Color(0xffFFFFFF).withOpacity(0.6),
          fontSize: 10,
        ),
        getTitles: (value) {
          if (value == 0) {
            return "0";
          }
          int showedDate = value.toInt();
          return "Jan." + showedDate.toString();
        },
      );

  FlGridData get gridData => FlGridData(show: false);

  FlBorderData get borderData => FlBorderData(
      show: true,
      border: const Border(
        bottom: BorderSide(color: Colors.white, width: 1),
      ));

  LineChartBarData get lineChartBarData1_1 => LineChartBarData(
        isCurved: true,
        colors: [const Color(0xffffffff)],
        barWidth: 2,
        // dashArray: [500, 2,2,2,2,2,2,2,2,2,2,2,2,22,2,2,2,2,22,2,2,22,2,2,2,2,22,2,2,2,2,22,2,2,2,2],
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: false,
        ),
        belowBarData: BarAreaData(show: false),
        spots: [
          FlSpot(0, 965464),
          FlSpot(double.parse(chartReportList[1].transactionDate),
              chartReportList[1].summaAmount),
          FlSpot(
            double.parse(chartReportList[2].transactionDate),
            chartReportList[2].summaAmount,
          ),
          FlSpot(
            double.parse(chartReportList[3].transactionDate),
            chartReportList[3].summaAmount,
          ),
          FlSpot(
            double.parse(chartReportList[4].transactionDate),
            chartReportList[4].summaAmount,
          ),
          FlSpot(
            double.parse(chartReportList[5].transactionDate),
            chartReportList[5].summaAmount,
          ),
          FlSpot(
            double.parse(chartReportList[6].transactionDate),
            chartReportList[6].summaAmount,
          ),
          FlSpot(
            double.parse(chartReportList[7].transactionDate),
            chartReportList[7].summaAmount,
          ),
          FlSpot(
            double.parse(chartReportList[8].transactionDate),
            chartReportList[8].summaAmount,
          ),
          FlSpot(
            double.parse(chartReportList[9].transactionDate),
            chartReportList[9].summaAmount,
          ),
          FlSpot(
            double.parse(chartReportList[10].transactionDate),
            chartReportList[10].summaAmount,
          ),
          FlSpot(
            double.parse(chartReportList[11].transactionDate),
            chartReportList[11].summaAmount,
          ),
          FlSpot(
            double.parse(chartReportList[12].transactionDate),
            chartReportList[12].summaAmount,
          ),
          FlSpot(
            double.parse(chartReportList[13].transactionDate),
            chartReportList[13].summaAmount,
          ),
          FlSpot(
            double.parse(chartReportList[14].transactionDate),
            chartReportList[14].summaAmount,
          ),
        ],
      );
}

class LineChartWidget extends StatefulWidget {
  const LineChartWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => LineChartWidgetState();
}

class LineChartWidgetState extends State<LineChartWidget> {
  late bool isShowingMainData = false;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.9,
      child: _LineChart(
        isShowingMainData: isShowingMainData,
      ),
    );
  }
}
