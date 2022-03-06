import 'package:flutter/material.dart';
import 'package:myapp/components/MediumText.dart';

class ProfileName extends StatelessWidget {
  const ProfileName({Key? key, required this.firstName, required this.mail})
      : super(key: key);

  final String firstName;
  final String mail;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MediumText(text: "Name: " + firstName),
        MediumText(text: "Email: " + mail)
      ],
    );
  }
}
