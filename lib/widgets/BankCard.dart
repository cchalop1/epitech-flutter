import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/components/BigText.dart';
import 'package:myapp/themes/Style.dart';
import 'package:myapp/constants/constants.dart';

class BankCard extends StatelessWidget {
  const BankCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      height: 220,
      constraints: const BoxConstraints.expand(height: 220),
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(15),
      //   color: const Color.fromARGB(255, 196, 195, 195),
      // ),
      decoration: BDPrincipale,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'CURRENT BALANCE',
                style: GoogleFonts.robotoMono(
                  fontSize: GFSmallFontSize,
                  fontWeight: GFSmallFontWeight,
                  color: Colors.black,
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(top: 2),
                  child: Text(
                    "\$ " + SoldMoney.toString(),
                    style: GoogleFonts.roboto(
                      fontSize: GFNormalFontSize,
                      fontWeight: GFBigFontWeight,
                    ),
                  )),
            ]),
            Container(
                padding: const EdgeInsets.all(5),
                child: const Icon(Icons.account_balance_wallet)),
          ]),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [BigText(text: "5440 1256 3870 4736")],
          )),
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Epitech Flutter",
                style: GoogleFonts.robotoMono(
                  fontSize: GFSmallFontSize,
                  fontWeight: GFSmallFontWeight,
                  color: Colors.black,
                ),
              ),
              Column(
                children: [
                  Text(
                    "EXPIRY",
                    style: GoogleFonts.robotoMono(
                      fontSize: GFSmallFontSize,
                      fontWeight: GFSmallFontWeight,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 2),
                    child: Text("09/24",
                        style: GoogleFonts.roboto(
                          fontSize: GFNormalFontSize,
                          fontWeight: GFBigFontWeight,
                        )),
                  )
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
