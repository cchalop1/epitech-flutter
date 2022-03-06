// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Expenses {
  String title;
  String shortTitle;
  int value;
  Color color;

  Expenses(this.title, this.shortTitle, this.value, this.color) {}

  String getTitle() {
    return title;
  }

  String getShortTitle() {
    return shortTitle;
  }

  int getValue() {
    return value;
  }

  Color getColor() {
    return color;
  }
}