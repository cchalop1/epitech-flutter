import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/components/BigText.dart';

class HomeWallet extends StatelessWidget {
  const HomeWallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: 
        Text(
          'Home Wallet',
          style: GoogleFonts.robotoMono(
            fontSize: 13,
            fontWeight: FontWeight.w300,
            color: Colors.black,
          ),
        ),
    );
  }
}
