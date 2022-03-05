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
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: const Color.fromARGB(99, 31, 184, 0)),
          child: const Icon(Icons.arrow_upward)),
      title: Text(transaction.toString()),
      subtitle: Text(transaction.dateTime.toString()),
    );
  }
}
