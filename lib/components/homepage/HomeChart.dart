import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:fl_chart/fl_chart.dart';
// import 'indicator.dart';
// import 'PieChartIndicator.dart';
import 'HomeChartIndicator.dart';

class HomeChart extends StatefulWidget {
  const HomeChart({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomeChartState createState() => _MyHomeChartState();
}
class _MyHomeChartState extends State<HomeChart> {
    int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded (child: Container(
          height: double.infinity, width: double.infinity,
          child: HomeChartIndicators(),
        )),
        Expanded (child: Container(
          height: double.infinity, width: double.infinity,
          child: PieChart(
            PieChartData(
                sections: showingSections()
            ),
            swapAnimationDuration: Duration(milliseconds: 150), // Optional
            swapAnimationCurve: Curves.linear,
          ),
        )),
      ] // Optional
    );
  }

// }
 List<PieChartSectionData> showingSections() {
    return List.generate(3, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      // final fontSize =  16.0;
      final radius = isTouched ? 60.0 : 50.0;
      // final radius = 50.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xff0293ee),
            value: 50,
            title: '50%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0xfff8b250),
            value: 35,
            title: '35%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 2:
          return PieChartSectionData(
            color: const Color(0xff845bef),
            value: 25,
            title: '25%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        default:
          throw Error();
      }
    });
  }
}