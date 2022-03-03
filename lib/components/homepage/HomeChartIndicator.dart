import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'indicator.dart';
import 'PieChartIndicator.dart';

class HomeChartIndicators extends StatelessWidget {
  const HomeChartIndicators({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: PieChartIndicator(
          color: const Color(0xff0293ee),
          text: "Clothing",
          isSquare: true,
          )
        ),
        Expanded(child: PieChartIndicator(
          color: const Color(0xfff8b250),
          text: "Food",
          isSquare: true,
          )
        ),
        Expanded(child: PieChartIndicator(
          color: const Color(0xff845bef),
          text: "Extra",
          isSquare: true,
          )
        )
      ],
    );
  }
}