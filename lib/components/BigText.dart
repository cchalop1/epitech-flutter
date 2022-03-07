import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/themes/Style.dart';

class BigText extends StatelessWidget {
  BigText({Key? key, required this.text}) : super(key: key);

  String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        fontSize: GFBigFontSize,
        fontWeight: GFBigFontWeight,
      ),
    );
  }
}
