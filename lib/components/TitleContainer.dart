import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/components/BigText.dart';

class TitleContainer extends StatelessWidget {
  TitleContainer({Key? key, required String this.text}) : super(key: key);

  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10.0), child: BigText(text: text));
  }
}
