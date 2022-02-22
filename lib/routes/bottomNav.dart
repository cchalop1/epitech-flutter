import 'package:flutter/material.dart';
import 'package:myapp/widgets/BankCard.dart';

final List<Widget> widgetOptions = <Widget>[
  const Center(
    child: Text("CONTACTS"),
  ),
  const BankCard(),
  const Center(
    child: Text("HOME"),
  ),
  const Center(
    child: Text("SEND MONEY"),
  ),
  const Center(
    child: Text("PROFILE"),
  ),
];
