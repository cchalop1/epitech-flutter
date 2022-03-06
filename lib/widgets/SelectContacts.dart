import 'package:flutter/material.dart';
import 'package:myapp/components/ContactItem.dart';
import 'package:myapp/constants/constants.dart';
import 'package:myapp/models/Contact.dart';

class SelectContacts extends StatefulWidget {
  SelectContacts({Key? key, Contact? this.currentContact, required Function(Contact) this.selectContact}) : super(key: key);

  final void Function (Contact) selectContact;
  final Contact? currentContact;

  @override
  State<SelectContacts> createState() => _SelectContactsState();
}

class _SelectContactsState extends State<SelectContacts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: listContacts
            .map((contact) => ContactItem(contact: contact, currentContact: widget.currentContact, selectContact: widget.selectContact))
            .toList(),
      ),
    );
  }
}
