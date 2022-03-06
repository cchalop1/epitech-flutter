import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MediumText extends StatelessWidget {
  MediumText({Key? key, required this.text}) : super(key: key);

  String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
