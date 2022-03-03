import 'package:flutter/material.dart';

class ListTransaction extends StatelessWidget {
  const ListTransaction({Key? key}) : super(key: key);

  List<Widget> buildTransactionList() {
    return List.generate(
        8,
        // Extract transactionn card in component
        (index) => ListTile(
              leading: Container(
                  color: Colors.green, child: Icon(Icons.arrow_upward)),
              title: Text('Transaction to toto'),
              subtitle: Text('300\$'),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        // find a way to put the container bottom of the
        // screen
        height: 300,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: buildTransactionList(),
        ));
  }
}
