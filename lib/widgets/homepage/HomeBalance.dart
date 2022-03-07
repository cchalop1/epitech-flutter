import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/components/BigText.dart';
import 'package:myapp/themes/Style.dart';

class HomeBalance extends StatelessWidget {
  const HomeBalance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      height: 220,
      constraints: const BoxConstraints.expand(height: 80),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: BGLiteGreenColor,
        // color: const Color.fromARGB(255, 196, 195, 195),
      ),
      child: Column (
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'My Balance',
                style: GoogleFonts.robotoMono(
                  fontSize: GFSmallFontSize,
                  fontWeight: GFSmallFontWeight,
                  color: Colors.black,
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(top: 2),
                  child: BigText(text: "\$ 54, 084.31"),
                    // Text(
                    //   "\$ 50, 000.00",
                    //   style: GoogleFonts.roboto(
                    //     fontSize: 15,
                    //     fontWeight: FontWeight.w500,
                    //   ),
                    // )
                  ),
            ]),
            // Container(
            //     padding: const EdgeInsets.all(5),
            //     child: const Icon(Icons.account_balance_wallet)),
          ]),
        ],
      ),
    );
  }
}
