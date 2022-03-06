import 'package:flutter/material.dart';
import 'package:myapp/components/BigText.dart';
import 'package:myapp/components/ContactsList.dart';
import 'package:myapp/constants/constants.dart';
import 'package:myapp/models/Contact.dart';

class Contacts extends StatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 5.0, right: 5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BigText(text: "Contacts"),
                  ElevatedButton(
                    child: Icon(Icons.add),
                    onPressed: () {},
                  )
                ]),
          ),
          Expanded(child: ContactsList(listContacts: listContacts))
        ],
      ),
    );
  }
}
