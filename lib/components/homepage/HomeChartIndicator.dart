import 'package:flutter/material.dart';
import 'package:myapp/models/Expenses.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'indicator.dart';
import 'PieChartIndicator.dart';
// import 'package:myapp/constants/pieChartExpenses.dart';

class HomeChartIndicators extends StatelessWidget {
  HomeChartIndicators({Key? key, required this.expenses}) : super(key: key);

  List<Expenses> expenses;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: expenses
        .map((e) => Expanded(
          child: PieChartIndicator(
            color: e.getColor(),
            text: e.getTitle(),
            isSquare: true,
            )
          )
        )
        .toList(),
    );
  }
}