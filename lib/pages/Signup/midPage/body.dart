import 'package:flutter/material.dart';
import 'package:myapp/components/rounded_button.dart';
import 'package:myapp/components/rounded_input_field.dart';

import '../../../mainScreen.dart';
import '../../Login/midPage/background.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String email = "";
  String firstName = "";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: size.height * 0.16),
            Center(
              child: SizedBox(
                width: 310,
                child: Container(
                  child: Text(
                    "SIGNUP",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {
                setState(() {
                  email = value;
                });
              },
            ),
            RoundedInputField(
              hintText: "Your first name",
              onChanged: (value) {
                setState(() {
                  firstName = value;
                });
              },
            ),
            RoundedButton(
                text: "SIGNUP",
                press: () {
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
                }),
            SizedBox(height: size.height * 0.01),
          ],
        ),
      ),
    );
  }
}
