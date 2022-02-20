import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BankCard extends StatelessWidget {
  const BankCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      height: 220,
      constraints: const BoxConstraints.expand(height: 220),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(255, 196, 195, 195),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'CURRENT BALANCE',
                style: GoogleFonts.robotoMono(
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(top: 2),
                  child: Text(
                    "\$ 50, 000.00",
                    style: GoogleFonts.roboto(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
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
            children: [
              Text(
                "2222 2222 2222 2222",
                style: GoogleFonts.roboto(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          )),
          Container(
              child: Text(
            "Epitech Flutter",
            style: GoogleFonts.robotoMono(
              fontSize: 13,
              fontWeight: FontWeight.w300,
              color: Colors.black,
            ),
          ))
        ],
      ),
    );
  }
}
