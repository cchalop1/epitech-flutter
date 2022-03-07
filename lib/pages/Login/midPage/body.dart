import 'package:flutter/material.dart';
import 'background.dart';
import '../../Signup/signup_screen.dart';
import 'package:myapp/components/already_have_an_account_acheck.dart';
import 'package:myapp/components/rounded_button.dart';
import 'package:myapp/components/rounded_input_field.dart';
import 'package:myapp/components/rounded_password_field.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../mainScreen.dart';

class Body extends StatefulWidget {
  Body();

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  _BodyState() {
    // newStatus = widget.newStatus;
  }
  _save() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("name", firstName);
    prefs.setString("mail", email);

    prefs.setInt("isConnect", 1);
  }

  @override
  String email = "";
  String firstName = "";

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: size.height * 0.16),
            SizedBox(
              width: 310,
              child: Container(
                child: Text(
                  "LOGIN",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {
                setState(() {
                  email = value;
                });
              },
            ),
            RoundedInputField(
              hintText: "Your firstname",
              onChanged: (value) {
                setState(() {
                  firstName = value;
                });
              },
            ),
            RoundedPasswordField(onChanged: (value) {
              setState(() {});
            }),
            RoundedButton(
              text: "LOG IN",
              press: () {
                _save();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return MainScreen(
                        mail: email,
                        firstName: firstName,
                      );
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.01),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
