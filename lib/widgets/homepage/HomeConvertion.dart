import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:myapp/components/BigText.dart';
import 'package:myapp/constants/constants.dart';
import 'package:myapp/constants/devisesList.dart';
import 'package:myapp/models/Devise.dart';
import 'package:myapp/themes/Style.dart';

class HomeConvertion extends StatefulWidget {
  HomeConvertion({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => HomeConvertionState();
}

class HomeConvertionState extends State {
  double myMoney = SoldMoney;
  double newMoney = SoldMoney;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      // height: 220,
      child: Column(
        children: [
          Container(
              height: 30,
              child: Row(
                children: listDevises
                    .map((e) => Expanded(
                          child: TextButton(
                              style: TextButton.styleFrom(
                                primary: Colors.blue,
                              ),
                              onPressed: () {
                                setState(() {
                                  newMoney = e.calculateNewDevise(myMoney);
                                });
                              },
                              child: Text(
                                e.getName(),
                                textAlign: TextAlign.center,
                              )),
                        ))
                    .toList(),
              )),
          Container(
            height: 100,
            // child: displayDevises(),
            child: Row(
              children: [
                Expanded(
                    child: Container(
                        margin: const EdgeInsets.all(5),
                        height: 100,
                        decoration: BDSmallCircularGreen,
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              myMoney.toString() + " \$",
                              textAlign: TextAlign.center,
                            )))),
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.all(5),
                      height: 100,
                      decoration: BDSmallCircularRed,
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            newMoney.toStringAsFixed(3),
                            textAlign: TextAlign.center,
                          ))),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
