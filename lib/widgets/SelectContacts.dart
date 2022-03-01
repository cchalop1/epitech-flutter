import 'package:flutter/material.dart';

class SelectContacts extends StatefulWidget {
  const SelectContacts({Key? key}) : super(key: key);

  @override
  State<SelectContacts> createState() => _SelectContactsState();
}

class _SelectContactsState extends State<SelectContacts> {
  // List<CircleAvatar> contactsList = List.generate(
  //     10,
  //     (index) => const CircleAvatar(
  //           backgroundImage: AssetImage("images/fake1.jpg"),
  //           radius: 30,
  //         ));

  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.horizontal, children: [
      CircleAvatar(
        backgroundImage: AssetImage("images/fake1.jpg"),
        radius: 30,
      )
    ]);
  }
}
