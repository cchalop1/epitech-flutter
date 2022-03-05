import 'package:flutter/material.dart';
import '/Screens/Login/components/background.dart';
import '/Screens/Signup/signup_screen.dart';
import '../../components/already_have_an_account_acheck.dart';
import '../../components/rounded_button.dart';
import '../../components/rounded_input_field.dart';
import '../../components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import '../login_screen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../../mainScreen.dart';

class Body extends StatefulWidget {
  Body(this.newStatus);
  var newStatus;

  @override
  State<Body> createState() => _BodyState(newStatus);
}

class _BodyState extends State<Body> {
  var email;
  var password;
  var newStatus = 0;
  var saveStates;

  var lel;
  _BodyState(this.saveStates) {
    // newStatus = widget.newStatus;
  }
  @override
  List<dynamic> jsonList = [];

  int fillForm = 0;

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
              onChanged: (value) {},
            ),
            RoundedPasswordField(onChanged: (value) {
              setState(() {});
            }),
            RoundedButton(
              text: "LOG IN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return MainScreen();
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
