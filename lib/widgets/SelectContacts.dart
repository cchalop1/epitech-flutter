import 'package:flutter/material.dart';

class SelectContacts extends StatefulWidget {
  const SelectContacts({Key? key}) : super(key: key);

  @override
  State<SelectContacts> createState() => _SelectContactsState();
}

class _SelectContactsState extends State<SelectContacts> {
  int _selectedIndex = 0;

  List<Widget> renderList() {
    return List.generate(
        10,
        // TODO: extract this part to component
        (index) => GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            child: Container(
              width: 100.0,
              decoration: index == _selectedIndex
                  ? BoxDecoration(
                      color: Color.fromARGB(255, 185, 72, 64),
                      borderRadius: BorderRadius.circular(100),
                    )
                  : null,
              margin: const EdgeInsets.only(left: 5.0, right: 5.0),
              padding: const EdgeInsets.all(5.0),
              child: const CircleAvatar(
                backgroundImage: AssetImage("images/fake1.jpg"),
                radius: 30,
              ),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: renderList(),
      ),
    );
  }
}
