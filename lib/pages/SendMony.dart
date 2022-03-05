import 'package:flutter/material.dart';
import 'package:myapp/components/BigText.dart';
import 'package:myapp/components/TitleContainer.dart';
import 'package:myapp/widgets/AmountInput.dart';
import 'package:myapp/widgets/ListTransaction.dart';
import 'package:myapp/widgets/SelectContacts.dart';

class SendMony extends StatelessWidget {
  const SendMony({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 5.0, right: 5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleContainer(text: "Enter amount"),
            SelectContacts(),
            AmountInput(),
            SizedBox(height: 15), // give it width
            TitleContainer(text: "Transaction history"),
            Expanded(child: ListTransaction()),
          ],
        ));
  }
}
