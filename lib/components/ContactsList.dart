import 'package:flutter/material.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // render list view of contacts
    return Expanded(
        child: Container(
            child: ListView(
      scrollDirection: Axis.vertical,
      children: List.generate(
          10,
          (index) => ListTile(
                leading: Image(image: AssetImage("images/fake1.jpg")),
                title: Text("Contact $index"),
              )),
    )));
  }
}
