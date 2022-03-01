import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/components/BigText.dart';

class HomeExpense extends StatelessWidget {
  const HomeExpense({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      height: 220,
      constraints: const BoxConstraints.expand(height: 200),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(255, 196, 195, 195),
      ),
      child: Column (
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Expense',
                style: GoogleFonts.robotoMono(
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(top: 2),
                  child: Row(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Text('Trad'),
                            Text('Food'),
                            Text('Extra')
                          ]),
                      ),
                      Container(
                        child: BigText(text: "Circle"),
                      )
                    ],
                  )
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
