import 'package:flutter/material.dart';
import 'package:myapp/models/Transaction.dart';

class TransactionTile extends StatelessWidget {
  TransactionTile({Key? key, required Transaction this.transaction})
      : super(key: key);

  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
          height: 200,
          color: Colors.green,
          child: const Icon(Icons.arrow_upward)),
      title: Text(transaction.toString()),
      subtitle: Text(transaction.dateTime.toString()),
    );
  }
}
