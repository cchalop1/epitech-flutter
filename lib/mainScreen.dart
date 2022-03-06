import 'package:flutter/material.dart';
import 'package:myapp/Screens/Welcome/welcome_screen.dart';
import 'package:myapp/widgets/navBar.dart';
import 'package:myapp/routes/bottomNav.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
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
      body: widgetOptions.elementAt(place), //const BankCard(),
    );
  }
}