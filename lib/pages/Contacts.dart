import 'package:flutter/material.dart';
import 'package:myapp/components/BigText.dart';
import 'package:myapp/components/ContactsList.dart';

class Contacts extends StatelessWidget {
  const Contacts({Key? key}) : super(key: key);

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
          ContactsList(),
        ],
      ),
    );
  }
}
