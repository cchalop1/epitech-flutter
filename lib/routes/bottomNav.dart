import 'package:flutter/material.dart';
import 'package:myapp/pages/SendMony.dart';
import 'package:myapp/widgets/BankCard.dart';

final List<Widget> widgetOptions = <Widget>[
  const Center(
    child: Text("CONTACTS"),
  ),
  const BankCard(),
  const Center(
    child: Text("HOME"),
  ),
  const SendMony(),
  const Center(
    child: Text("PROFILE"),
  ),
];
