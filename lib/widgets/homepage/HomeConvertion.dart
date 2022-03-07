import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:myapp/components/BigText.dart';
import 'package:myapp/constants/devisesList.dart';
import 'package:myapp/models/Devise.dart';

class HomeConvertion extends StatefulWidget {
  HomeConvertion({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => HomeConvertionState();
}

class HomeConvertionState extends State {

  double myMoney = 54000.5;
  double newMoney = 54000.5 ;

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.all(15),
      // padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      height: 220,
      // constraints: const BoxConstraints.expand(height: 200),
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(15),
      //   color: const Color.fromARGB(255, 196, 195, 195),
      // ),
      child: Column (
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 30,
            child : Row(
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
                      )
                    ),
                  )
                )
                .toList(),
            )
          ),
          Container(
            height: 100,
            // child: displayDevises(),
            child: Row(
              children: [
                Expanded(child: Text(myMoney.toString() + " \$", textAlign: TextAlign.center,)),
                Expanded(child: Text(newMoney.toStringAsFixed(3), textAlign: TextAlign.center,)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
