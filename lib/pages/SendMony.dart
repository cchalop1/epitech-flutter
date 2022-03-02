import 'package:flutter/material.dart';
import 'package:myapp/widgets/AmountInput.dart';
import 'package:myapp/widgets/ListTransaction.dart';
import 'package:myapp/widgets/SelectContacts.dart';

class SendMony extends StatelessWidget {
  const SendMony({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text("Enter amount"),
        AmountInput(),
        SelectContacts(),
        Text("Transaction history"),
        ListTransaction()
      ],
    );
  }
}
