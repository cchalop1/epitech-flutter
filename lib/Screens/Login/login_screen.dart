import 'package:flutter/material.dart';
import '/Screens/Login/components/body.dart';

class LoginScreen extends StatefulWidget {
  var statusConnect;
  LoginScreen(this.statusConnect) {
    print(this.statusConnect);
  }
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(widget.statusConnect),
    );
  }
}
