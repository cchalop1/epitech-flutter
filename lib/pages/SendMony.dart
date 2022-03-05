import 'package:flutter/material.dart';
import 'package:myapp/components/BigText.dart';
import 'package:myapp/components/TitleContainer.dart';
import 'package:myapp/constants/constants.dart';
import 'package:myapp/models/Contact.dart';
import 'package:myapp/models/Transaction.dart';
import 'package:myapp/widgets/AmountInput.dart';
import 'package:myapp/widgets/ListTransaction.dart';
import 'package:myapp/widgets/SelectContacts.dart';

class SendMony extends StatefulWidget {
  SendMony({Key? key}) : super(key: key);

  @override
  State<SendMony> createState() => _SendMonyState();
}

class _SendMonyState extends State<SendMony> {
  Contact currentContact = listContacts[0];
  List<Transaction> listTransaction = [];

  void selectContact(Contact contact) {
    setState(() {
      currentContact = contact;
    });
  }

  void createTransaction(int amount) {
    setState(() {
      listTransaction = [
        ...listTransaction,
        Transaction(contact: currentContact, amount: amount)
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 5.0, right: 5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleContainer(text: "Enter amount"),
            SelectContacts(
                selectContact: selectContact, currentContact: currentContact),
            AmountInput(createTransaction: createTransaction),
            const SizedBox(height: 15),
            TitleContainer(text: "Transaction history"),
            Expanded(child: ListTransaction(listTransaction: listTransaction)),
          ],
        ));
  }
}
