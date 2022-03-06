import 'package:uuid/uuid.dart';

class Contact {
  String frstName;
  String lastName;
  String urlImage;
  String iban;
  late String id;

  Contact(this.frstName, this.lastName, this.urlImage, this.iban) {
    id = const Uuid().v4();
  }

  String getFullName() {
    return '$frstName $lastName';
  }

  String getUrlImage() {
    return urlImage;
  }

  String getIban() {
    return iban;
  }

  String getId() {
    return id;
  }
}
