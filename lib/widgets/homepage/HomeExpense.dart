import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/components/BigText.dart';
import 'package:myapp/components/homepage/HomeChart.dart';

class HomeExpense extends StatelessWidget {
  const HomeExpense({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      height: 220,
      constraints: const BoxConstraints.expand(height: 200),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(255, 196, 195, 195),  
      ),
      child: Column (
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 30,
            child : Text(
              'Expenses',
              style: GoogleFonts.robotoMono(
                fontSize: 13,
                fontWeight: FontWeight.w300,
                color: Colors.black,
              ),
            )
          ),
          Container(
            height: 100,
            child: HomeChart(title: "chart"),
          )
        ],
      ),
    );
  }
}
