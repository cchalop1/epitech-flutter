class Contact {
  String frstName;
  String lastName;
  String urlImage;
  String iban;

  Contact(this.frstName, this.lastName, this.urlImage, this.iban);

  String getFullName() {
    return '$frstName $lastName';
  }

  String getUrlImage() {
    return urlImage;
  }

  String getIban() {
    return iban;
  }
}
