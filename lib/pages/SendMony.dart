import 'package:flutter/material.dart';
import 'package:myapp/components/BigText.dart';
import 'package:myapp/components/TitleContainer.dart';
import 'package:myapp/constants/constants.dart';
import 'package:myapp/models/Contact.dart';
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

  void selectContact(Contact contact) {
    setState(() {
      currentContact = contact;
    });
  }

  void createTransaction(String amount) {
    print('create transaction with amount: $amount for contact: ' +
        currentContact.getFullName());
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
            const Expanded(child: ListTransaction()),
          ],
        ));
  }
}
