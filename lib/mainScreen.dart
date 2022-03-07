import 'package:flutter/material.dart';
import 'package:myapp/pages/Profile.dart';
import 'package:myapp/pages/Welcome/welcome_screen.dart';
import 'package:myapp/widgets/navBar.dart';
import 'package:myapp/pages/Contacts.dart';
import 'package:myapp/pages/SendMony.dart';
import 'package:myapp/pages/wallet.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:myapp/pages/HomePage.dart';
import 'package:myapp/themes/Style.dart';

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
        const HomePage(),
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

  void removeData() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.remove('counter');
  }

  int place = 2;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: const Color.fromARGB(255, 185, 72, 64),
        backgroundColor: BGRedColor,
        title: const Text('Welcome to Flutter'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            removeData();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return WelcomeScreen();
                },
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: NavBar(place: place, updatePage: updatePage),
      body: widgetOptions.elementAt(place),
    );
  }
}
