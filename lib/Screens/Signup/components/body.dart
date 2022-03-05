import 'package:flutter/material.dart';
import '/Screens/Login/login_screen.dart';
import '/Screens/Signup/components/background.dart';
import '/Screens/Signup/components/social_icon.dart';
import '../../components/already_have_an_account_acheck.dart';
import '../../components/rounded_button.dart';
import '../../components/rounded_input_field.dart';
import '../../components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart' as http;
import '../signup_screen.dart';
import '../../../mainScreen.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: size.height * 0.16),
            SizedBox(
              width: 310,
              child: Container(
                child: Text(
                  "SIGNUP",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Your first name",
              onChanged: (value) {
                setState(() {});
              },
            ),
            RoundedButton(
                text: "SIGNUP",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return MainScreen();
                      },
                    ),
                  );
                }),
            SizedBox(height: size.height * 0.01),
          ],
        ),
      ),
    );
  }
}
