import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:myapp/components/BigText.dart';
import 'package:myapp/widgets/homepage/HomeBalance.dart';
import 'package:myapp/widgets/homepage/HomeExpense.dart';
import 'package:myapp/widgets/homepage/HomeConvertion.dart';
import 'package:myapp/widgets/homepage/HomeWallet.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column (
          children: [
            // Text("HOME PAGE"),
            HomeBalance(),
            HomeExpense(),
            HomeConvertion(),
            HomeWallet(),
            // HomeChart(title: "Chart"),
          ],
        ),
      ),
    );
  }
}
