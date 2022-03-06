import 'package:flutter/material.dart';
import 'package:myapp/components/TransactionTile.dart';
import 'package:myapp/models/Transaction.dart';

class ListTransaction extends StatelessWidget {
  ListTransaction({Key? key, required List<Transaction> this.listTransaction})
      : super(key: key);

  List<Transaction> listTransaction;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: listTransaction.isNotEmpty
            ? ListView(
                scrollDirection: Axis.vertical,
                children: listTransaction.reversed
                    .map((transaction) =>
                        TransactionTile(transaction: transaction))
                    .toList(),
              )
            : const Center(child: Text("No transaction yet")));
  }
}
