import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/components/BigText.dart';
import 'package:myapp/components/homepage/HomeChart.dart';
import 'package:myapp/constants/pieChartExpenses.dart';
import 'package:myapp/themes/Style.dart';

class HomeExpense extends StatelessWidget {
  const HomeExpense({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      height: 220,
      constraints: const BoxConstraints.expand(height: 200),
      decoration: BDPrincipale,
      child: Column (
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 30,
            child : Text(
              'Expenses',
              style: GoogleFonts.robotoMono(
                fontSize: GFSmallFontSize,
                fontWeight: GFSmallFontWeight,
                color: Colors.black,
              ),
            )
          ),
          Container(
            height: 100,
            child: HomeChart(expenses: listExpenses),
          )
        ],
      ),
    );
  }
}
