import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/components/BigText.dart';
import 'package:myapp/pages/wallet.dart';
import 'package:myapp/widgets/listTransac.dart';

class HomeWallet extends StatelessWidget {
  const HomeWallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
      InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Wallet(),
            ),
          );
        },
        child: Container(
          margin: EdgeInsets.only(right: 10),
          child: Text(
            'See more',
            style: GoogleFonts.robotoMono(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
      ListTransac(length: 2),
    ]);
  }
}
