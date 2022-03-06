import 'package:flutter/material.dart';
import 'package:myapp/models/Contact.dart';

class ContactTile extends StatelessWidget {
  ContactTile({Key? key, required this.contact}) : super(key: key);

  Contact contact;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading:
            CircleAvatar(backgroundImage: AssetImage(contact.getUrlImage())),
        title: Text(contact.getFullName()),
        subtitle: Text("Iban: " + contact.getIban()),
      ),
    );
  }
}
