import 'package:flutter/material.dart';
import 'package:myapp/components/MediumText.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileName extends StatefulWidget {
  const ProfileName({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfileName> createState() => _ProfileNameState();
}

class _ProfileNameState extends State<ProfileName> {
  _read() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      name = prefs.getString("name") ?? "ll";
      mail = prefs.getString("mail") ?? "maaa";
    });
  }

  String name = "";

  String mail = "";

  @override
  void initState() {
    _read();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MediumText(text: "Name: " + name),
        MediumText(text: "Email: " + mail)
      ],
    );
  }
}
