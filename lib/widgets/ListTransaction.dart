import 'package:flutter/material.dart';

class ListTransaction extends StatelessWidget {
  const ListTransaction({Key? key}) : super(key: key);

  List<Widget> buildTransactionList() {
    return List.generate(
        8,
        (index) => ListTile(
              leading: Container(
                  height: 200,
                  color: Colors.green,
                  child: const Icon(Icons.arrow_upward)),
              title: const Text('Transaction to toto'),
              subtitle: const Text('300\$'),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      scrollDirection: Axis.vertical,
      children: buildTransactionList(),
    ));
  }
}
