import 'package:flutter/material.dart';
import 'package:myapp/models/Contact.dart';

class ContactItem extends StatefulWidget {
  ContactItem(
      {Key? key,
      required this.contact,
      Contact? this.currentContact,
      required Function(Contact) this.selectContact})
      : super(key: key);

  final Contact contact;
  final Contact? currentContact;
  final void Function(Contact) selectContact;

  @override
  State<ContactItem> createState() => _ContactItemState();
}

class _ContactItemState extends State<ContactItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          widget.selectContact(widget.contact);
        },
        child: Container(
          width: MediaQuery.of(context).size.height * 0.1,
          decoration: widget.contact.getId() == widget.currentContact?.getId()
              ? BoxDecoration(
                  color: Color.fromARGB(255, 185, 72, 64),
                  borderRadius: BorderRadius.circular(100),
                )
              : null,
          margin: const EdgeInsets.only(left: 5.0, right: 5.0),
          padding: const EdgeInsets.all(5.0),
          child: CircleAvatar(
            backgroundImage: AssetImage(widget.contact.getUrlImage()),
            radius: 30,
          ),
        ));
  }
}
