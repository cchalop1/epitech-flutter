import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:fl_chart/fl_chart.dart';
// import 'indicator.dart';
// import 'PieChartIndicator.dart';
import 'HomeChartIndicator.dart';
import 'package:myapp/constants/pieChartExpenses.dart';
import 'package:myapp/models/Expenses.dart';

class HomeChart extends StatelessWidget {
  HomeChart({Key? key, required this.expenses}) : super(key: key);

  final List<Expenses> expenses;

  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded (child: Container(
          height: double.infinity, width: double.infinity,
          child: HomeChartIndicators(expenses: expenses),
        )),
        Expanded (child: Container(
          height: double.infinity, width: double.infinity,
          child: PieChart(
            PieChartData(
                // sections: showingSections()
                sections: expenses
                  .map((e) => PieChartSectionData(
                     color: e.getColor(),
                      value: e.getValue().toDouble(),
                      title: e.getShortTitle(),
                      radius: 50.0,
                      titleStyle: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xffffffff)),
                    )
                  )
                  .toList()
            ),
            swapAnimationDuration: Duration(milliseconds: 150), // Optional
            swapAnimationCurve: Curves.linear,
          ),
        )),
      ] // Optional
    );
  }
}