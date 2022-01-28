import 'package:flutter/material.dart';

import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SparkLineWidget extends StatefulWidget {
  const SparkLineWidget({
    Key? key,
  }) : super(key: key);

  @override
  _SparkLineWidgetState createState() => _SparkLineWidgetState();
}

class _SparkLineWidgetState extends State<SparkLineWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height/6,),
          Sparkline(
            data: [1.5, 1, 0, 2, 5, 1.5, 2, 5, 2.3],
            lineColor: Color(0xFFFFFFFF),
            fillColor: Colors.lightGreen[200]!,
            pointsMode: PointsMode.all,
            pointSize: 5.0,
            useCubicSmoothing: true,
            lineWidth: 1.0,
            gridLinelabelPrefix: '\$',
            gridLineLabelPrecision: 3,
            fillGradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.red[800]!, Colors.red[200]!],
            ),
          ),
          const Divider(
            color: Colors.black,
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              // shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 9,
              itemBuilder: (BuildContext context, int index) => Container(
                child: Row(
                  children: [
                    Text(
                      (index + 1).toString(),
                    ),
                    index != 8
                        ? SizedBox(
                            width: MediaQuery.of(context).size.width / 9 - 5,
                          )
                        : Container(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
