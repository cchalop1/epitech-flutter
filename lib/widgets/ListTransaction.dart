import 'package:flutter/material.dart';

class ListTransaction extends StatelessWidget {
  const ListTransaction({Key? key}) : super(key: key);

  List<Widget> buildTransactionList() {
    return List.generate(
        3,
        // Extract transactionn card in component
        (index) => ListTile(
              leading: Icon(Icons.account_balance_wallet),
              title: Text('Transaction $index'),
              subtitle: Text('$index'),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        // find a way to put the container bottom of the
        // screen
        height: 200,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: buildTransactionList(),
        ));
  }
}
