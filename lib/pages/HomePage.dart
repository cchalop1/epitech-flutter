import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:myapp/components/BigText.dart';
import 'package:myapp/widgets/homepage/HomeBalance.dart';
import 'package:myapp/widgets/homepage/HomeExpense.dart';
import 'package:myapp/widgets/homepage/HomeConvertion.dart';
import 'package:myapp/widgets/homepage/HomeWallet.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.all(15),
      // padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      // height: 220,
      // constraints: const BoxConstraints.expand(height: 220),
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(15),
      //   color: const Color.fromARGB(255, 196, 195, 195),
      // ),
      // child: Text("HOME PAGE"),
      child: Column (
        children: [
          Text("HOME PAGE"),
          HomeBalance(),
          HomeExpense(),
          HomeConvertion(),
          HomeWallet(),
          // HomeChart(title: "Chart"),
        ],
      ),
    );
  }
}
