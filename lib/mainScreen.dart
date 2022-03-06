import 'package:flutter/material.dart';
import 'package:myapp/widgets/navBar.dart';
import 'package:myapp/pages/Contacts.dart';
import 'package:myapp/pages/SendMony.dart';
import 'package:myapp/Screens/wallet.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({required this.mail, Key? key}) : super(key: key);
  final String mail;
  @override
  State<MainScreen> createState() => MainScreenState(mail);
}

class MainScreenState extends State<MainScreen> {
  MainScreenState(this.mail);
  String mail;
  final List<Widget> widgetOptions = <Widget>[
    const Center(
      child: Contacts(),
    ),
    const Wallet(),
    const Center(
      child: Text("HOME"),
    ),
    SendMony(),
    const Center(
      child: Text("PROFILE"),
    ),
  ];

  @override
  void updatePage(int index) {
    setState(() {
      place = index;
    });
  }

  int place = 2;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 185, 72, 64),
        title: const Text('Welcome to Flutter'),
      ),
      bottomNavigationBar: NavBar(place: place, updatePage: updatePage),
      body: widgetOptions.elementAt(place),
    );
  }
}
