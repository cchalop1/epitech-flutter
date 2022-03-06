import 'package:flutter/material.dart';
import 'package:myapp/pages/Profile.dart';
import 'package:myapp/widgets/navBar.dart';
import 'package:myapp/pages/Contacts.dart';
import 'package:myapp/pages/SendMony.dart';
import 'package:myapp/pages/wallet.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({required this.mail, required this.firstName, Key? key})
      : super(key: key);
  final String mail;
  final String firstName;

  @override
  State<MainScreen> createState() => MainScreenState(mail, firstName);
}

class MainScreenState extends State<MainScreen> {
  MainScreenState(this.mail, this.firstName);
  String mail;
  String firstName;

  List<Widget> widgetOptions = [];

  @override
  void initState() {
    setState(() {
      widgetOptions = <Widget>[
        const Center(
          child: Contacts(),
        ),
        const Wallet(),
        const Center(
          child: Text("HOME"),
        ),
        SendMony(),
        Profile(firstName: firstName, mail: mail),
      ];
    });
  }

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
