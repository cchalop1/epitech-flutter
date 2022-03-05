import 'package:flutter/material.dart';
import 'package:myapp/components/ContactTile.dart';
import 'package:myapp/models/Contact.dart';

class ContactsList extends StatelessWidget {
  ContactsList({Key? key, required this.listContacts}) : super(key: key);

  List<Contact> listContacts;

  @override
  Widget build(BuildContext context) {
    // render list view of contacts
    return Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: listContacts
              .map((contact) => ContactTile(contact: contact))
              .toList(),
        ));
  }
}
