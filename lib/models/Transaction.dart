import 'package:myapp/models/Contact.dart';
import 'package:uuid/uuid.dart';

class Transaction {
  Contact contact;
  int amount;
  late DateTime dateTime;
  late String id;

  Transaction({required this.contact, required this.amount}) {
    id = const Uuid().v4();
    dateTime = DateTime.now();
  }

  @override
  String toString() {
    return "Transaction to " +
        contact.getFullName() +
        " " +
        amount.toString() +
        "\$";
  }
}
