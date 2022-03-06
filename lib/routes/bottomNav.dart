import 'package:flutter/material.dart';
import 'package:myapp/pages/Contacts.dart';
import 'package:myapp/pages/SendMony.dart';
import 'package:myapp/Screens/wallet.dart';

final List<Widget> widgetOptions = <Widget>[
  const Center(
    child: Contacts(),
  ),
  Wallet(),
  const Center(
    child: Text("HOME"),
  ),
  SendMony(),
  const Center(
    child: Text("PROFILE"),
  ),
];
